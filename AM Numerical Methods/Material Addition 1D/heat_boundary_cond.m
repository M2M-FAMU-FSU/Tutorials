function [pl,ql,pr,qr] = heat_boundary_cond(xl,ul,xr,ur,t) %Insulated at both ends 
pl = 0; 
ql = 1; 
pr = 0;
qr = 1; %Check Documentation https://www.mathworks.com/help/matlab/ref/pdepe.html#mw_bf53ae0b-d53a-47fc-81dc-ee63671697a8 for details.
end