function result = solve_pde_simple_heat(model, k, Q, ta, DBC_edges, NBC_edges)
    specifyCoefficients(model,'m',0,'d',0,'c',k,'a',0,'f',Q);
    applyBoundaryCondition(model,'dirichlet',"Edge",DBC_edges,"u",ta); %Modify for Every geometry
    applyBoundaryCondition(model,'neumann',"Edge",NBC_edges); %As I understand, it defaults to zero. 

    
    tic
    result = solvepde(model);
    toc
end