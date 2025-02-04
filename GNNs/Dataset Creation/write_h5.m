function write_h5(filename,dataset_name,data,n_graphs)

h5create(filename,strcat("/",dataset_name),[n_graphs 1]);
h5write(filename,strcat("/",dataset_name),data);
    
end