% gpacalc.m
% Simple calculator for academic GPA, using 4.0 scale.
% Good for quickly figuring out how GPA would change with differing
%   grade scenarios.
% Author: Brian Woo-Shem
% Date: 2019_12_30
% Version: 0.2 - Works but requires user editing of numGrades array.
%Released under the GNU General Public License v3.0

% Define values:
%       [a+ ,a,a- ,b+ ,b,b- ,c+ ,c,c- ,d+ ,d]
gVals = [4.3,4,3.7,3.3,3,2.7,2.3,2,1.7,1.3,1];

% Specify number of each grade type, one per class per term
% note: need entries for 11 different grade options
%numGrades = [number of a_p, a, a_m, b_p, b, ...];
numGrades = [8,27,9,2,5,1,2,1,0,0,0]; % <=== CHANGE THESE VALUES!
numClass = sum(numGrades);

% Number of semesters, quarters, or units of honors classes.
honors = 10;

% Compute grade points
pts = sum(gVals.*numGrades)+honors;

% Result is GPA earned by student
gpa = pts/numClass