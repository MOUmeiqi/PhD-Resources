%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%   Author: Ezra Luke America (Copyright 2018-2038)                 %
%   Purpose: To load a measurement frame and reconstruct images.    %
%                                                                   %
%   Date: 04/08/2019                                                %
%   MATLAB version: 2015                                            %
%   EIDROS version: 3.9.1                                           %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clear all;
clc;

load('\path\to\heat.mat');
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

%% Develop the OCDM-prior matrix - Comment this section to test other priors
J = calc_jacobian(calc_jacobian_bkgnd(imdl));
Jt = J.';
JtJ = Jt*J;
lamda = 0.6;
I = speye(size(JtJ,1));
G1 = inv(JtJ - lamda*I);
G = G1*Jt*(heat(1:end, 1)- heat(1:end, end));
Gt = G.';
RtR = JtJ - Jt*(heat(1:end, end))*Gt*(G*Gt)^(-1);
RM1 = inv(JtJ - RtR);
RM = RM1*Jt;
imdl.solve_use_matrix.RM = RM;

%% Defined generic priors - Comment the OCDM-prior and uncomment the relevant generic prior
% lamda = 0.6;
% % Noser prior
% imdl.hyperparameter.value = lamda;
% imdl.RtR_prior=   @prior_noser;

% % Tikhonov prior
% imdl.hyperparameter.value = lamda;
% imdl.RtR_prior=   @prior_tikhonov;

% % Laplace prior
% imdl.hyperparameter.value = lamda;
% imdl.RtR_prior=   @prior_laplace;

% % Gaussian HPF prior
% imdl.hyperparameter.value = lamda;
% imdl.RtR_prior=   @prior_gaussian_HPF;

%% Reconstruct the image
hh = show_fem(inv_solve( imdl, heat(1:end, end)), [1 0]);
set(hh, 'EdgeColor', 'none');
axis off
axis image

%% End of script




