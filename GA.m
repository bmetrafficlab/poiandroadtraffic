% Define upper and lower bounds
UB = ones(1, 214);
LB = zeros(1, 214);

% Define the number of variables
nvars = 214;

% Define the objective function
ObjectiveFunction = @fitness;

% Create optimization options using optimoptions
options = optimoptions(@ga, ...
    'SelectionFcn', @selectionstochunif, ... % Stochastic universal sampling
    'CrossoverFcn', @crossoverintermediate, ...% Intermediate crossover
    'MutationFcn', @mutationadaptfeasible, ... % Adaptive mutation
    'FunctionTolerance', 1e-2);

% Run the genetic algorithm
[Beta, fval] = ga(ObjectiveFunction, nvars, [], [], [], [], LB, UB, [], 1:214, options);
