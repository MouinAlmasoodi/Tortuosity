#  Tortuosity and Transient Permeability Computations from 3D FIB-SEM Images. 
Streamlines-based approach is developed to compute tortuosity based on three-dimensional pore geometry constructed from FIB-SEM images. Also, permeability was calculated based on transient simulation with varying mesh sizes. 

#  Getting Started
openFOAM needs to be installed first. This work is developed under OpenFOAM-v1706.  
More information regarding openFOAM can be found on https://openfoam.com/releases  
Paraview needs to be also installed to visculise tortuosity data  
More information about ParaView can be found here https://www.paraview.org/  

#  Files Description
**U and P**: include boundary condition assumptions and values for pressure and velocity. 

**blockMeshDict**: includes details about the background mesh such as dimensions and gridding parameters. 

**snappyHexMeshDict**: includes the pore geometry refinement parameters and mesh quailty control.

**controlDict**: includes custom functions to compute pressure differential between inlet and outlet for permeability calculations (Region 1 represents the inlet surface integration function, whereas Region 2 represents the outlet surface integration function). Additionally, the file includes function to calculate the velocity volume average within the pore geometry at each time step.

**fvSolution and fvSchemes**: include solvers parameters and discretization schemes respectively.

**Tortuosity_Results**: includes simulated tortuosity data within the shale sample pore geometry.

**PDF Modeling**: R script for modeling probability density functions. Also it includes plotting functions for figures used in the manuscript.  

**transportProperties**: includes viscosity specification.    



# Abstract
Abstract Recent advancements in computational geosciences and pore-scale imaging have made it possible to extract realistic three-dimensional pore geometries from tight rock samples such as shale. This study presents a viable mean to determine elusive transport properties of tight reservoirs using techniques from Computational Fluid Dynamics (CFD). We present novel numerical procedure to compute hydraulic tortuosity in a complex 3D pore system imaged by Focused Ion Beam Scanning Electron Microscope (FIB-SEM). The effectiveness of the procedure is demonstrated on a pore network that was extracted from a shale reservoir in the United States. Results suggest log-normal distribution of tortuosity with an average of 1.8 which illustrate the highly convoluted pathways of fluid diffusion through shale reservoirs. In order to investigate the size of permeability Representative Elementary Volume (REV), permeability was computed at 10 sub-volumes of the original shale sample to evaluate permeability dependence on the sample size by considering transient incompressible Newtonian fluid. Findings suggest that a shale sample of 7.44 cubic micron is insufficient to reach permeability REV. Additionally, while solving the governing equations numerically, it is critical to ensure that the chosen mesh size and discretization schemes yield consistent, accurate, and stable solutions. Thus, mesh density sensitivities were carried out for the first time on a shale sample to examine the reliability of using 3D pore networks extracted from FIB-SEM stacks. 
