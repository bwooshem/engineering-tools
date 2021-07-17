% File:    polToComp
% Title:   Converts polar form number to complex form
% Topic:   Math & Engineering
% Purpose: Converts polar form number to complex form
% Author:  CC By Brian Woo-Shem
% Date:    2021_07_07
% Version: 1.0
%Released under the GNU General Public License v3.0

% r /_theta -> a + jb
%Input r and theta in degrees
%Returns formatted string with complex number of form a + jb

function comp = polToComp(r,theta)
  real = r*cosd(theta);
  imag = r*sind(theta);
  comp = sprintf(' %f + j %f \n',real,imag);
end
