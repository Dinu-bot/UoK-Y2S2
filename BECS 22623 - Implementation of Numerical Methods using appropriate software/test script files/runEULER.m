% Define the ODE as an inline (anonymous) function
dydt = @(t, y) y * t^3 - 1.5 * y;

% Define the parameters
tspan = [0, 2]; % Time interval
y0 = 1;         % Initial value y(0) = 1
h = 0.5;        % Step size

% Solve the ODE using the Euler method
[t, y] = eulode(dydt, tspan, y0, h);

% Display the results
disp('Time (t):');
disp(t);
disp('Solution (y):');
disp(y);

% Plot the solution
figure;
plot(t, y, '-o', 'LineWidth', 2);
xlabel('Time (t)');
ylabel('Solution (y)');
title('Solution of dy/dt = y*t^3 - 1.5y using Euler Method');
grid on;