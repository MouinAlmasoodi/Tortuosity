/*--------------------------------*- C++ -*----------------------------------*\
| =========                 |                                                 |
| \\      /  F ield         | OpenFOAM: The Open Source CFD Toolbox           |
|  \\    /   O peration     | Version:  2.3.0                                 |
|   \\  /    A nd           | Web:      www.OpenFOAM.org                      |
|    \\/     M anipulation  |                                                 |
\*---------------------------------------------------------------------------*/
FoamFile
{
    version     2.0;
    format      ascii;
    class       volScalarField;
    object      p;
}
// * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * //

dimensions      [0 2 -2 0 0 0 0];

internalField   uniform 0;

boundaryField
{

    geometry-walls
    {
        type            zeroGradient;
    }

    outlet //outlet
    {
        type            fixedValue;
		value			uniform 101; // p' = p/rho (14.6 psi)
    }

    inlet //inlet
    {
        type            fixedValue;
		value			uniform 790; // p' = p/rho (114.6 psi)
    }

/*     bottom
    {
        type            zeroGradient;
    }

    top
    {
        type            zeroGradient;
    }

    frontAndBack
    {
        type            zeroGradient;
    } */
}

// ************************************************************************* //
