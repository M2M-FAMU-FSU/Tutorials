function Q = Q_moving_1D(x,t,process_params,L_rod)
    v_s = process_params.scan_speed;
    LP = process_params.laser_power;
    r_b2 = (process_params.laser_radius)^2;
    eeta = process_params.laser_absorptivity;

    laser_loc = laser_location_1D(t,v_s,L_rod);

    x_diff2 = (x -laser_loc).^2;
    
    Q = 3*LP*eeta*exp(-2*(x_diff2)./r_b2)./(pi*r_b2);



end