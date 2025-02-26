function rho = rho(x,t,rho_300K,process_params,L_rod) %Density
    v_s = process_params.scan_speed;

    laser_loc = laser_location_1D(t,v_s,L_rod);
    r_b = (process_params.laser_radius);

    if(x>(laser_loc+r_b)) %Assuming Laser Movement from Left to Right
        rho = 0; 
    else
        rho = rho_300K; 
    end
   
    
end