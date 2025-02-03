clear;
close all; 


% Rectangle 1
label = "geom1";
width = 3; 
height = 2;
gdm = [3 4 0 width width 0 0 0 height height]'; 


k = 0.001;
Q = 1;
ta = 300;
dl = decsg(gdm, 'S1', ('S1')');
pdegplot(dl,"EdgeLabels","on","FaceLabels","on")
% saveas(gcf,label+"outline.png")


numberOfPDE = 1;
model = createpde(numberOfPDE);


geometryFromEdges(model,dl);

hmax = 0.1; % element size
msh = generateMesh(model,'Hmax',hmax);
figure
pdeplot(model)
% saveas(gcf,label+"mesh.png")


specifyCoefficients(model,'m',0,'d',0,'c',k,'a',0,'f',Q);

applyBoundaryCondition(model,'dirichlet',"Edge",[1,2,3,4],"u",ta); %Modify for Every geometry

R = solvepde(model);
u = R.NodalSolution;
figure; 
pdeplot(model,"XYData",u,"Contour","on","ColorMap","jet");
title("Temperature Steady State Solution")
xlabel("X-coordinate, meters")
ylabel("Y-coordinate, meters")
axis equal
% saveas(gcf,label+"sol.png")


xy = msh.Nodes';

% save(label+'_sol','xy','u');


