%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%   Author: Ezra Luke America (Copyright 2018-2038)                 %
%   Purpose: Comm with arduino to begin MUXs. Then samples boundary %
%            voltages. Then reconstructs images.                    %
%   Date: 04/08/2019                                                %
%   MATLAB version: 2015                                            %
%   EIDROS version: 3.9.1                                           %
%   Quartus version: 18.1                                           %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clear all;
clc;
addpath 'QUARTUS WORKSPACE'
hdlsetuptoolpath('ToolName','Altera Quartus','ToolPath','LOCATION OF QUARTUS')
stp1 = alt_signaltap_run('LOCATION OF SIGNAL TAP','unsigned','INSTANCE');
stp = [];

%==========================================================================
% Comms between matlab and arduino to begin measuring.
% Procedure, wait until arduino sends 'A' to serial, then reply with 'A' to
% acknowledge and send 'M' to start measuring.
%==========================================================================

%% Open and configure serial
s = serial('COM PORT');
set(s, 'BaudRate', 115200);
fopen(s);
s.ReadAsyncMode = 'continuous';
flushinput(s);
while(s.BytesAvailable <= 0)
    fprintf('Waiting to sample \n')
end
fprintf(s,'%s','A');
pause(1);
fprintf(s,'%s','M');
fprintf('Sampling electrodes ... \n')
pause(0.5);
windows = 1;
flushinput(s);

%% Start acquiring data
for k=1:16
    for j=1:16
        for i=1:windows
            stp_combined = alt_signaltap_run('LOCATION OF SIGNAL TAP','unsigned','INSTANCE');
            stp = stp_combined(1:end, 1); %extracts voltage
            stp_cur = stp_combined(1:end, 2); %extract current
            t = 1:length(stp);
            stp = stp';
            stp_cur = stp_cur';
            pfit = polyfit(t, double(stp), 8);
            pval = polyval(pfit, t, 8);
            pfit_cur = polyfit(t, double(stp_cur), 8);
            pval_cur = polyval(pfit_cur, t, 8);
            pval = 0.000031176*pval - 0.2463670924;
            pval_cur = 0.000031176*pval_cur - 0.2463670924;
            my_field = strcat('v',num2str(k), '_', num2str(j), '_', num2str(i));
            z_cross = max(abs(fft(xcorr(pval_cur(387:1600), pval(387:1600)))));
            my_field_z = strcat(my_field, '_', 'z');
            variable.(my_field) = pval(387:1600);
            variable.(my_field_z) = z_cross;
        end
        temp = true;
        while temp
            fprintf(s, 'N');
            go = fscanf(s);
            break
        end
    end
    close all;
end
fclose(s);
delete(s);
clear s;

%% Form a matrix of impulse responses
nhn = [];
for k = 1:16
    for j = 1:16
            for i = 1:windows
                my_field = strcat('v',num2str(k), '_', num2str(j), '_', num2str(i));
                my_field_z = strcat(my_field, '_', 'z');
                nhn = [nhn, variable.(variable.(my_field_z))];
            end
    end
end

%% Start image reconstructions

run('\path\to\eidors\startup.m');
eidors_cache( 'clear_all' );

%% Create inverse model
imdl = mk_common_model('j2c',16);
e= size(imdl.fwd_model.elems,1);
clf;clear imgr imgn
imdl.reconst_type = 'absolute';

%% Define forward model
imb=  mk_common_model('b2c',16);
imdl.fwd_model= imb.fwd_model;

%% Inverse model configuration
imdl.solve=       @inv_solve_gn;
[stim, meas_sel] = mk_stim_patterns(16, 1, [0,1], '{ad}', {'meas_current'}, 1);
imdl.fwd_model.stimulation = stim;
imdl.fwd_model.meas_select = meas_sel;
imdl.fwd_model = mdl_normalize(imdl.fwd_model, 0);
imdl.fwd_model.nodes = imdl.fwd_model.nodes*15;

%% Develop the OCDM-prior matrix
J = calc_jacobian(calc_jacobian_bkgnd(imdl));
Jt = J.';
JtJ = Jt*J;
lamda = 0.6;
I = speye(size(JtJ,1));
G1 = inv(JtJ - lamda*I);
G = G1*Jt*(nhn(1:end, 1)- nhn(1:end, end));
Gt = G.';
invJ = (Jt*(heat(1:end, end))*Gt*(G*Gt)^(-1))\Jt;
imdl.solve_use_matrix.RM = invJ;

%% Reconstruct the image
hh = show_fem(inv_solve( imdl, nhn(1:end, end)), [1 0]);
set(hh, 'EdgeColor', 'none');
axis off
axis image

%% Close connections

alt_signaltap_run('END_CONNECTION');
fprintf('\n DONE! \n');

%% End of script