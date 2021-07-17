%mix.m
%Function to perform mixture rule in thermodynamics & fluid mechanics
%Input: mix(x, hf, hg)
%Output: h value.
%For thermodynamics, works for h, u, v under saturation dome tables
%CC By 2019 Brian Woo-Shem
%Released under the GNU General Public License v3.0
%Version 1.0

function h = mix(x, hf, hg)
  h = (1-x)*hf + x*hg;
end
