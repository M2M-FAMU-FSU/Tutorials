function [model,msh] = rectangle_mesh_model(width, height,hmax)
    gdm = [3 4 0 width width 0 0 0 height height]'; %Describes a geometry
    dl = decsg(gdm, 'S1', ('S1')');

    model = create_pde_simple_heat(dl);

   
    msh = generateMesh(model,'Hmax',hmax,"GeometricOrder","linear");
end