% File:    speed_fplotter_many_eqns.m
% Title:   Template for quick fplots with functions and labels
% Topic:   Graphing Utilities
% Purpose: Template for fast plotting of any number of functions.
% Author:  Brian Woo-Shem
% Date:    2021_04_18
% Version: 1.1   Fix plotnames bug in Octave by using cell array. 
%               Make plug-in values more intuitive. Clean up fplot code to
%               fit on one line without dummy variable.
%Released under the GNU General Public License v3.0

%reset
clear all
close all
clc
warning('off','all')

% Declare Constants (if needed)

% Each of these arrays need to be 1 x n, where n is number of functions
% ERASE EXAMPLES!
% Strings for plot names, form "NAME1",    % <=== CHANGE ME!
plotnames = {"PLOT1", "PLOT2", "PLOT3"}; 
% Cell array of functions, form @(v)v, not required to be same variable  % <=== CHANGE ME!
fxns = {@(m)m,
 @(x)2*x,
 @(x)x^2};
% Bounds to plot each function to, [a,b]   % <=== CHANGE ME!
a = [0,0,0];
b = [5,5,5];

% Generate plot
figure(1)
hold on
for x = [1:length(plotnames)]
   %Iteratively plot and increase line thickness
  fplot(fxns{x},[a(x),b(x)],'LineWidth',3);
end
% Title and axes labels - change manually
title('TITLE')
xlabel('X')
ylabel('Y')
% Input all plot names
legend(plotnames)