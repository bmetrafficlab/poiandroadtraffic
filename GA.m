
 UB = ones(1,214);
 LB = zeros(1,214);
 nvars = 214;

ObjectiveFunction = @fitness;


% Create optimization options using optimoptions
options = optimoptions(@ga, ...
    'SelectionFcn', @selectionstochunif, ... % Stochastic universal sampling
    'CrossoverFcn', @crossoverintermediate, ...% Intermediate crossover
    'MutationFcn', @mutationadaptfeasible, ... % Adaptive mutation
    'FunctionTolerance', 1e-2); 


[Beta, fval] = ga(ObjectiveFunction,nvars,[],[],[],[],LB,UB,[],[1:214], options);







