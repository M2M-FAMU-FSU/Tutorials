function material_property_Matrix = material_property_quiet_activation2D(location,state,property_value_constant,total_scan_time,n_scans,max_y)
    %Documentation - https://www.mathworks.com/help/pde/ug/m-d-or-a-coefficient-for-systems.html#bu5xcun-1
   
%     time_per_scan = total_scan_time/n_scans;
    
    if(isnan(state.time))
        material_property_Matrix = nan(1, length(location.x));
    else
        laser_loc = laser_location(current_time,total_scan_time,n_scans,max_y);
        material_property_Matrix = property_value_constant.*(location.y < laser_loc.y);
    end
    
end