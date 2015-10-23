% Duffing

clear all
clc

global delta F omega;

delta = 0.5;
omega = 1;
F = 6;

initial = [0; 0];

tspan = [0, 100];

[t, y] = ode45(@duff, tspan, initial);

figure(10)
plot(y(:,1), y(:,2))


% Duff 2

Npt = 10;
imax = 100; 


delta = 0.5;
omega = 1;

tspan = [0, imax];
initial = [0; 0];

d = 0;

x = [];
dx = [];

x_fix = [];
dx_fix = [];

f_vect = 0:0.1:20;
f_max = length(f_vect);

for j = 1:f_max
   F = f_vect(j);
   [t, y] = ode45(@duff, tspan, initial);
   y_max = length(y);
   
   x = zeros(1, imax);
   
   for k = 1:y_max
       if (-0.1 >= y(k, 2) <= 0.1)
           y(k, 2)
           x(k) = y(k, 1);
       end
   end
   x_fix = [x_fix; x];
end

length(f_vect)
length(x_fix)
figure(20)
plot(f_vect, x_fix, '.')

