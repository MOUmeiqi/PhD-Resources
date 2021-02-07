%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%   Author: Ezra Luke America (Copyright 2018-2038)                 %
%   Purpose: To load a reconstructed image and display pixel plot.  %
%                                                                   %
%   Date: 04/08/2019                                                %
%   MATLAB version: 2015                                            %
%   EIDROS version: 3.9.1                                           %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

k = imread('LOAD IMAGE');
b = rgb2gray(k);
g = imcomplement(b);
x = 1:length(g);
plot(x,g)
title('Pixel Intensity vs. Pixel Number', 'FontSize', 24);
xlabel('Pixel Number', 'FontSize', 22);
ylabel('Pixel Intensity', 'FontSize', 22);
set(gca,'FontSize',18)