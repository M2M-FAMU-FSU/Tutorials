%clear;
%close all;
%action1 = float(action1)
%tem1 = cell(tem1)


k = 1; % thermal conductivity of copper, W/(m-K)
rho = 0.00844; % density of copper, kg/m^3
specificHeat = 410; % specific heat of copper, J/(kg-K)
% thick = .01; % plate thickness in meters
% stefanBoltz = 5.670373e-8; % Stefan-Boltzmann constant, W/(m^2-K^4)
hCoeff = 1e-6; % Convection coefficient, W/(m^2-K)
% The ambient temperature is assumed to be 300 degrees-Kelvin.
ta = 300;
% emiss = .5; % emissivity of the plate surface


numberOfPDE = 1;
model = createpde(numberOfPDE);

%Geometry
width = 1.0; 
height = 0.5; 
gdm = [3 4 0 width width 0 0 0 height height]';
dl = decsg(gdm, 'S1', ('S1')'); %Create Geometry


% pdegplot(dl,"EdgeLabels","on","FaceLabels","on")
% axis equal

geometryFromEdges(model,dl); %Combining PDE with geometry

endTime = 0.013; %time per scan
tlist = linspace(0,endTime,100); %200 steps

%Heat Equation Constants
thick = 0.005;
c = thick*k;
d = thick*rho*specificHeat;

%tic
hmax = 0.01; % element size
msh = generateMesh(model,'Hmax',hmax);
%toc
%figure
pdemesh(model)

scan_pattern = action; 

%tic
fcoeff = @(location,state) HeatGen_Q_2D_MultipleScans_single(location,state,scan_pattern);

specifyCoefficients(model,'m',0,'d',d,'c',c,'a',0,'f',fcoeff);%PDE


applyBoundaryCondition(model,'neumann','Edge',[1,2,3,4],'q',0,'g',0); %BC1

%applyBoundaryCondition(model,"dirichlet","Edge",[1,2,3,4],"u",ta);
setInitialConditions(model,results); 


% model.SolverOptions.RelativeTolerance = 1.0e-3; 
% model.SolverOptions.AbsoluteTolerance = 1.0e-4;

R = solvepde(model,tlist);
%toc
u = R.NodalSolution;

%result1 = R.NodalSolution;
result1 = R;
result2 = u(:, end);
result3 = msh.Nodes;

result = var(var(result1));
for i = 1:200
    figure(1)  
    pdeplot(model,'XYData',u(:,i),'Contour','off','ColorMap','jet');
    caxis([300, 10000]);
    % F(i) = getframe(gcf) ;
    % drawnow
end
% % create the video writer with 1 fps
% writerObj = VideoWriter('myVideo.avi');
% writerObj.FrameRate = 20;
% % set the seconds per image
% % open the video writer
% open(writerObj);
% % write the frames to the video
% for i=1:length(F)
% % convert the image to a frame
% frame = F(i) ;    
% writeVideo(writerObj, frame);
% end
% % close the writer object
% close(writerObj);
