function correlation = calculation(Beta)
    % Define normalization function
    f = @(x) (x - min(x)) / (max(x) - min(x));
    
    % Load necessary data
    load("kelen_06_31_25_all_poi.mat");
    load("kelen_06_31_25_all_85th_percentile_speed.mat");
    
    % Select relevant POI classes based on Beta
    relevant_indices = find(Beta == 1);
    POI_data_selected = kelen_06_04_29_all(relevant_indices, :);
    
    % Sum up selected POI classes
    POI_data_summed = sum(POI_data_selected, 1);
    
    % Calculate correlation
    h = 17; % Specific hour
    
    % Compute correlations
    correlation = corr(...
        f(POI_data_summed(1, h:24:480)'), ...
        f(kelen_06_31_25_all_85th_percentile_speed(h, :)'), ...
        'Type', 'Spearman'...
    );
    
    % Store results in the base workspace
    assignin('base', 'POI_data_summed', f(POI_data_summed));
    assignin('base', 'correlation', correlation);
end
