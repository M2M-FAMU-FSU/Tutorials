function distance = distance_mesh_nodes(msh,indices)
      x_1  = msh.Nodes(1, indices(:,1));
      x_2  = msh.Nodes(1, indices(:,2));

      y_1  = msh.Nodes(1, indices(:,1));
      y_2  = msh.Nodes(1, indices(:,2));

      distance = sqrt((x_1 - x_2).^2 + (y_1 - y_2).^2);
    
end