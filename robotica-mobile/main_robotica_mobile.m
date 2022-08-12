clear; close all; clc;
import robot.Robot;
import environment.Environment;


%% ROBOT
global radius_robot
radius_robot = 1;
robot = Robot(radius_robot);
% PLOT ROBOT
figure(); plot(robot);

%% ENVIRONMENT
global x_origin y_origin nr_points width height start goal nr_obstacles obstacles;
x_origin=1; y_origin=1;
nr_obstacles = 0;
obstacles = [];
% offset per accedere al primo elemento della griglia essendo che in MATLAB
% gli elementi in una matrice vengono indicizzati a partire da 1 e non da 0
offset_grid=1;
width=100; height=100;
start = [x_origin+1 y_origin+1];
goal = [width-1 height-1];

environment = Environment(width, height, start, goal);
inizialize(environment);
add_walls(environment);
add_obstacles(environment);
plot(environment);

%% VORONOI DIAGRAMS
import path_planning.voronoi_diagrams.voronoi;
voronoi;




