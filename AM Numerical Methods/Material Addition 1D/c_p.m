function c_p = c_p(x,t,c_p_300K,process_params,L_rod) %Specific Heat
    v_s = process_params.scan_speed;

    laser_loc = laser_location_1D(t,v_s,L_rod);
    r_b = (process_params.laser_radius);

    if(x>(laser_loc+r_b)) %Assuming Laser Movement from Left to Right
        c_p = 0;
    else
        c_p = c_p_300K; 
    end
   
    
end