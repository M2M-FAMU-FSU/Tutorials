function bcMatrix = HeatGen_Q_2D_MultipleScans_single(location,state,scan_pattern)

SS = 500; %scan speed
LP = 500; %Laser Power
eeta = 0.4; %Absorptivity
r_b = 0.1; %Laser Radius
H = 0.1; % Hatch distance

% n_scans = 10;
% state.time
if(isnan(state.time))
    bcMatrix = nan(1, length(location.x));
else
    time_ind = ceil(state.time/0.06); %scans (time/scan time for each line)
    if(time_ind == 0)
        time_ind = 1;
    end
    %time_ind
    %state.time
    
    x_centre =  0.05 + (H*(scan_pattern));
    
    % x_centre
    scan_time = rem(state.time,0.06);
    %scan_time
    % y_centre = 0.1 + SS*scan_time;
    %y_centre
    
    x_diff2 = (location.x - x_centre).^2;
    % y_diff2 = (location.y - y_centre).^2;
    
    % x_cut_off = abs(location.x - x_centre) < 4*r_b;
    
    r_b2 = (r_b).^2;
    
    
    bcMatrix = 6*sqrt(3)*LP*eeta*exp(-3*(x_diff2)./r_b2)./(pi*r_b);%Goldak's Heat source
    bcMatrix = bcMatrix.*(state.time<=0.06); %cut off time for the laser


% bcMatrix = bcMatrix.*x_cut_off;
% bcMatrix = bcMatrix.*(state.time<15); 
end
end