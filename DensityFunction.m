function [ output_args ] = DensityFunction( input_args )
%DENSITYFUNCTION Summary of this function goes here
%   Detailed explanation goes here

density = str2double(get(input_args.density, 'String'));
diameter = str2double(get(input_args.diameter, 'String'));
atom_number = str2double(get(input_args.atom_number, 'String'));
thickness = str2double(get(input_args.thickness, 'String'));

%%Constants
Navgadro = 6.0220e+23;

%%Volume calculations
vol = (pi)*((diameter/2)^2)*(thickness);

%%Atomic weight calcuations.
atomic_weight = ((density *vol * Navgadro)/(atom_number));

%%Mole calculations
moles = (atom_number / Navgadro);

%%Required mass in grams.
mass = moles * atomic_weight;

output_args = mass;

end

