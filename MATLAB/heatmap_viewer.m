%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%   Author: Ezra Luke America (Copyright 2018-2038)                 %
%   Purpose: To load a measurement frame and view the heatmap.      %
%                                                                   %
%   Date: 04/08/2019                                                %
%   MATLAB version: 2015                                            %
%   EIDROS version: 3.9.1                                           %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clear all;
clc;

load('\path\to\heat.mat');

figure1 = figure;
colormap('jet')
axes1 = axes('Parent',figure1,'Layer','top','YDir','reverse','FontWeight','bold','FontSize',22,'FontName','Times New Roman');
hold(axes1,'on');
xlabel('Frequency (per 100 Hz)','FontWeight','bold','FontSize',22,'FontName','Times New Roman');
ylabel('Channel number','FontWeight','bold','FontSize',22,'FontName','Times New Roman');
image(fliplr(heat),'Parent',axes1,'CDataMapping','scaled')
h = colorbar('eastoutside','FontWeight','bold','FontSize',22,'FontName','Times New Roman');
h.Label.String = 'Magnitude (kilo-ohm)';
title('Heatmap of impedance magnitude versus frequency','FontWeight','bold','FontSize',24,'FontName','Times New Roman');

%% End of script