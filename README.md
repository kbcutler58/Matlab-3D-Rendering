Matlab-3D-Rendering
===================
Created by Kyle Cutler

Matlab 3D Figure Generation/Animation: 
The goal of this code is to take in a 3D Model, generate 2D to 3D vertex correspondence, map existing data onto 3D models
for improved visualization and analysis

Lola_Figure_Generator_Beta.m is the main script file

    DOSI Lab Lola 3D Figure Generator Scrip
		Requires stlread.m
            [faces,vertices,normals]=stlread(stlfile.stl)
        Requires cameraMatrix.m
            [transformation matrix] = cameraMatrix(4xM real coordinates,2xM
            2D coordinates)
    Inputs:
        Path to folder with figure files
        STL file (of lola)
        Vertex correspondence data file
    Outputs:
        3D figures    
    File Structure
        Load in STL file
        Load in data figure(s)
        Load/Create vertex correspondence
        3D to 2D transform
        Subselect vertex map
        Tag sorted vertex map with 2D locations
        Color vertices according to tag
        Display 3D Figure
        Save File
        Multiple Figure Inputs
		
Animator3000 creates simiple rotating animations of 3D figures

Output Folder is where the image files are saved

OutputVideo Folder is where the animations are saved

Figure Files xxxx is where figures of data are stored

cursor_info_xxx is the 3D vertex information of correspondence points used for cameraMatrix function

  Needs to be generated once based on a new mesh
  
  3D coordinates of 2D points
