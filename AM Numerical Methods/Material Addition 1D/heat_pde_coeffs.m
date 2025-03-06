function [c,f,s] = heat_pde_coeffs(x,t,u,dudx,material_prop_funcs,heat_source_func)

rho_cp_k = cellfun(@(f) f(x,t), material_prop_funcs);

c = rho_cp_k(1)*rho_cp_k(2);

f = rho_cp_k(3)*dudx;

s = heat_source_func(x,t);

end
