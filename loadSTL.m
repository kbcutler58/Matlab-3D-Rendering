function [faces,vertices,normals,flag] = loadSTL( stlpath, filename )
% Load 3D Geometry into workspace
%   requires stlread.m
%   stlpath - string of path to folder containing stl file
%   filename - filename without .stl

cd(stlpath)
filestring = strcat(filename,'.stl');
[faces,vertices,normals] = stlread(filestring);
vertices = [100*vertices(:,1),-100*vertices(:,2),-100*vertices(:,3)];

end

