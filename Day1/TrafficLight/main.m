% Main script

% Create a figure handle
traffic = figure;
hold on
axis equal
% Define dim versions of colors
dimRed = [0.7, 0, 0];
dimYellow = [0.7, 0.7, 0];
dimGreen = [0, 0.7, 0];

% Initial positions for circles
xRed = 0;
yRed = 12;
xYellow = 0;
yYellow = 6;
xGreen = 0;
yGreen = 0;

% Create a pole rectangle
rectangle('Position', [-0.7, -12, 1.5 , 9], 'EdgeColor', 'none', 'FaceColor', [0.5; 0.5; 0.5], 'LineWidth', 2, 'Curvature', [0.2, 0.1]);

% Create a rectangle surrounding the circles on the current axes
rectangle('Position', [-3, -4, 6, 20], 'EdgeColor', 'none', 'FaceColor', [0.1, 0.1, 0.1], 'LineWidth', 2, 'Curvature', [0.2, 0.1]);
% Create initial circles using rectangles
circleHandleRed = rectangle('Position', [xRed-2.5, yRed-2.5, 5, 5], 'Curvature', [1, 1], 'FaceColor', dimRed);
circleHandleYellow = rectangle('Position', [xYellow-2.5, yYellow-2.5, 5, 5], 'Curvature', [1, 1], 'FaceColor', dimYellow);
circleHandleGreen = rectangle('Position', [xGreen-2.5, yGreen-2.5, 5, 5], 'Curvature', [1, 1], 'FaceColor', dimGreen);


% Additional settings or labels for the main figure if needed
xlabel('X-axis for Main Figure');
ylabel('Y-axis for Main Figure');
title('Main Figure');

while true
    % Simulate a traffic light sequence
    set(circleHandleRed, 'FaceColor', 'r');
    drawnow limitrate;
    pause(2);

    % Dim the lights
    set(circleHandleRed, 'FaceColor', dimRed);
    drawnow limitrate;
    pause(1);
    
    % Simulate a traffic light sequence
    set(circleHandleYellow, 'FaceColor', 'y');
    drawnow limitrate;
    pause(2);

    % Dim the lights
    set(circleHandleYellow, 'FaceColor', dimYellow);
    drawnow limitrate;
    pause(1);
    
    % Simulate a traffic light sequence
    set(circleHandleGreen, 'FaceColor', 'g');
    drawnow limitrate;
    pause(2);

    % Dim the lights
    set(circleHandleGreen, 'FaceColor', dimGreen);
    drawnow limitrate;
    pause(1);    
end
