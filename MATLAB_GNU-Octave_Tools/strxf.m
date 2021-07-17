%strxf.m
%Stress Transformation Equation Solver
%Computes transformed plane stress in 2D stress blocks
%CC By 2019 Brian Woo-Shem
%Released under the GNU General Public License v3.0
%Version 1.0
%2019_05_11

%May be used with strxf_ui.m for easier used
%Input 4 scalars for stress block
%Output vector stress, holding [sigma_x`, sigma_y`, tau_x`y`]

function stress = strxf(sigx, sigy, txy, theta)
  %First item in stress holds sigma_x'
  stress(1) = (sigx+sigy)/2+(sigx-sigy)/2*cosd(2*theta)+txy*sind(2*theta);
  %Second item in stress is sigma_y'
  stress(2) = (sigx+sigy)/2-(sigx-sigy)/2*cosd(2*theta)-txy*sind(2*theta);
  %Third item in stress is tx'y'
  stress(3) = -((sigx-sigy)/2)*sind(2*theta)+txy*cosd(2*theta);
  %4: sigma_avg
  stress(4) = (sigx+sigy)/2;
  %5: R = tau_max
  stress(5) = sqrt(((sigx-sigy)/2)^2+txy^2);
  %6: theta_s
  stress(6) = 0.5*atand(-((sigx-sigy)/2)/txy);
  %7: sigma_max
  stress(7) = stress(4)+stress(5);
  %8: sigma_min
  stress(8) = stress(4)-stress(5);
  %9: theta_p
  stress(9) = 0.5*atand(txy/((sigx-sigy)/2));
  
end
