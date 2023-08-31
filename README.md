# poiandroadtraffic
On the Relationship between the Activity at Point of Interests and Road Traffic

The estimation and analysis of road traffic represent the preliminary steps towards satisfying the current needs for smooth, safe, and green transportation. Therefore, effective traffic monitoring is an essential topic alongside the planning of sustainable transportation systems and the development of new traffic management concepts. In contrast to classical traffic detection solutions, this paper investigates the correlation between travelers' social activities and road traffic.  The paper's primary goal is to investigate the presence of the relationship between social activity and road traffic, which might allow an infrastructure-independent traffic monitoring technique as well. People’s general activities at Point of Interest (POI) locations (measured as occupancy parameter) are correlated with traffic data so that, finally, proper proxys can be defined for link-level average traffic speed estimation. The method is tested and evaluated using real-world traffic and POI occupancy data from Budapest (District XI.). The results of the correlation investigation justify an indirect relationship between activity at POIs and road traffic, which holds promise for future practical applicability.

# Genetic Algorithm Optimization for a cost-efficient traffic monitoring solution 

This repository contains the implementation of a Genetic Algorithm (GA) optimization. The GA aims to find optimal solutions based on user-defined settings and a specific fitness function.

## General GA Settings

The Genetic Algorithm simulates natural selection to evolve potential solutions over multiple generations. Here are the general GA settings used:

- Initial population: 214
- Selection: Stochastic universal sampling
- Crossover: Intermediate Crossover
- Mutation: Adaptive Mutation with Feasible Bounds
- Mutation Rate: 1% (adjustable)
- Function Tolerance: 0.01

## Fitness Function

The fitness function, defined in `fitness.m`, quantifies solution quality within the problem's context. In this project, the fitness function measures the correlation between 85th percentile velocity of the measured road segment and the selected POI's occupancy data. The goal is to find parameter combinations (Beta values) that maximize this correlation.

## Correlation

Correlation calculation is defined in `calculation.m`. 


