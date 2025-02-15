%Not Used Currently
function rho_Matrix = rho_2D(location,state,total_scan_time,n_scans,max_y)
    %Documentation - https://www.mathworks.com/help/pde/ug/m-d-or-a-coefficient-for-systems.html#bu5xcun-1
    rho = 0.00844; % density of copper, kg/m^3
%     time_per_scan = total_scan_time/n_scans;
    
    if(isnan(state.time))
        rho_Matrix = nan(1, length(location.x));
    else
        laser_loc = laser_location(current_time,total_scan_time,n_scans,max_y);
        rho_Matrix = rho.*(location.y < laser_loc.y);
    end
    
end