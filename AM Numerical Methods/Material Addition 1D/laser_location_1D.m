function laser_loc = laser_location_1D(current_time,v_s,L_rod)

    max_on_time = L_rod/v_s;

    %Assuming laser starts moving at time =0 and x = 0 
    % (note there is some "wastage" of energy at the end since laser radius
    % is out of bounds)
    if(current_time>max_on_time) % For simulations that allow "cooling down"
        laser_loc = nan;
    else
        laser_loc = 0.0 + v_s*current_time;
    end

end