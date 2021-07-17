% File:    speed_fplot_single_eqn.m
% Title:   Template for quick fplot of a single function with labels
% Topic:   Graphing Utilities
% Purpose: Template for fast plotting of a function on a formatted graph
% Author:  Brian Woo-Shem
% Date:    2021_04_18
% Version: 1.1
%Released under the GNU General Public License v3.0

%reset
clear all
close all
clc
warning('off','all')

% Constants

% Function to plot. Format @(x)x+x^2   <===
fxn = @(x)x;

% Range                                <===
start = -5;
finish = 5;

% Generate plot
figure()
hold on
%Plot and increase line thickness
fplot(fxn,[start,finish],'LineWidth',3);
% Title and axes labels               <===
title('TITLE')
xlabel('X_AXIS')
ylabel('Y_AXIS')
