%strxf_ui.m
%Simple command window user interface for strxf function
%Stress Transformation Equation Solver
%Computes transformed plane stress in 2D stress blocks
%CC By 2019 Brian Woo-Shem
%Released under the GNU General Public License v3.0
%Version 1.0
%2019_05_11

%NOTE: Must be in same folder as strxf.m file. 
%Files with the file ending '.m' are for use in the proprietary programming 
%software MATLAB and in the open-source software GNU Octave.

%Reset workspace
clear all
close all
clc

%Display human-readable program intro
disp('Stress Transformation Solver for plane stress in 2D stress blocks')
disp('Enter the following variables: ')
%Prompt user input for necessary vars
sigx = input(' sigma x: ');
sigy = input(' sigma y: ');
txy = input(' tau_xy: ');
theta = input(' theta, ccw (+):  ');
%Calls function to compute these values
s = strxf(sigx,sigy,txy,theta);
%Output result as human-readable string
fprintf('\n\nTransformed Stresses:\nsigma_x` = %d \nsigma_y` = %d \ntau_x`y` = %d\n', s(1), s(2), s(3))
fprintf('\nPrinciple Stresses:\n')
fprintf('sigma_avg = %d\nR = Tau_max = %d\ntheta_s = %d\nsigma_max = sigma_1 = %d\nsigma_min = sigma_2 = %d\ntheta_p = %d\n\n',  s(4), s(5), s(6), s(7), s(8), s(9))
        
