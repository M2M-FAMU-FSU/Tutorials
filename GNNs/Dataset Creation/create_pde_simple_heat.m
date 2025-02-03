function model = create_pde_simple_heat(dl)
    numberOfPDE = 1;
    model = createpde(numberOfPDE);

    geometryFromEdges(model,dl);

    
end
