function [ output_args ] = DensityFunction( input_args )
%DENSITYFUNCTION Summary of this function goes here
%   Detailed explanation goes here

density = str2double(get(input_args.density, 'String'));
diameter = str2double(get(input_args.diameter, 'String'));
atom_number = str2double(get(input_args.atom_number, 'String'));
thickness = str2double(get(input_args.thickness, 'String'));


density = density * 100.00;gahe001

output_args = density;

end

