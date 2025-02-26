function k = k(x,t,k_300K,process_params,L_rod) %Conductivity
    v_s = process_params.scan_speed;

    laser_loc = laser_location_1D(t,v_s,L_rod);
    r_b = (process_params.laser_radius);

    if(x>(laser_loc+r_b)) %Assuming Laser Movement from Left to Right
        k = 0;
    else
        k = k_300K; 
    end
   
    
end