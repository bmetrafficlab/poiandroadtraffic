function y = fitness(Beta)
% This function calculates the fitness value based on Beta

% Display message
disp("Computing fitness value...");

% Calculate the correlation using the calculation function
correlationValue = calculation(Beta);

% Negate the absolute value of the correlation
fitnessValue = -abs(correlationValue);

% Set the fitness value
y = fitnessValue;

% Display completion message
disp("Fitness calculation complete.");
end
