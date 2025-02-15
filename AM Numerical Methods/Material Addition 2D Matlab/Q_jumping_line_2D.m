function bcMatrix = Q_jumping_line_2D(location,state,process_params)

SS = process_params.SS;
LP = process_params.LP;
eeta = process_params.powder_heat_absorption;
r_b = process_params.laser_radius;

x_centre =  0.4 + SS*state.time;
y_centre = 1;


x_diff2 = (location.x - x_centre).^2;
y_diff2 = (location.y - y_centre).^2;

% x_cut_off = abs(location.x - x_centre) < 4*r_b;

r_b2 = (2*r_b).^2;


bcMatrix = 3*LP*eeta*exp(-2*(x_diff2 + y_diff2)./r_b2)./(pi*r_b2);

% bcMatrix = bcMatrix.*x_cut_off;
bcMatrix = bcMatrix.*(state.time<15); 

end