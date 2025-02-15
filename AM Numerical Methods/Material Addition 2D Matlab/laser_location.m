function laser_loc = laser_location(current_time,total_scan_time,n_scans,max_y)
    single_scan_time = total_scan_time/n_scans;
    scan_end_times = singe_scan_time:single_scan_time:total_scan_time;

    y_steps = max_y/n_scans:max_y/n_scans:max_y;

    if(current_time>total_scan_time)
        laser_loc = nan;
    else
        idx = find(scan_end_times> current_time, 1, 'first');
        laser_loc.y = y_steps(idx);
    end


end