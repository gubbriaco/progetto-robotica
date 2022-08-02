clear; close all; clc;
import robot.*;
import environment.*;


%% ROBOT
global radius_robot
radius_robot = 5;
robot = Robot(radius_robot);
% PLOT ROBOT
figure(); Robot.plot();

%% ENVIRONMENT
global width height matrix
width = 100; height = 125;
matrix = zeros(height, width);
environment = Environment(width, height);

% PLOT ENVIRONMENT
figure();
Environment.plot();
Environment.add_obstacle(20, 40, 20, 25, 0.2);
% Environment.add_obstacle();
% Environment.add_obstacle();
% Environment.add_obstacle();
% Environment.add_obstacle();
% Environment.add_obstacle();
