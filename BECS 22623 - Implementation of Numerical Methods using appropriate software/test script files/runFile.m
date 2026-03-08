f = @(x)  x^2-2;
fp= @(x)  2*x;
seed = 1;
maxitr = 10 ;
m =1;
root = Newton(f,fp,seed,maxitr , m);

absolute_error = sqrt(2) - root;

fprintf('Root: %.6f\n', root);
fprintf('Absolute error: %.6f\n', absolute_error);


fun = @(x) x^2/10 -2*sin(x);
negfun = @(x)  -fun;
[xmax , negfval] = fminbnd(fun , 0 , 4);
ymax = -negfval;

fprintf('xmax: %.4f\n', xmax);
fprintf('negfval: %.4f\n', negfval);
fprintf('ymax : %.4f\n', ymax );


x = 0:pi/4:2*pi;
v = sin(x);
xq = 0:pi/16:2*pi;
vq1 = interp1(x,v,xq);

figure()
plot(x,v,'o' , xq , vq1 , ':.');
xlim([0 2*pi]);
title('(Default) Linear Interpolation ');

vq2 = interp1(x , v ,xq , 'spline');
figure()
plot(x,v,'o' , xq , vq2 , ':.');
xlim([0 2*pi]);
title('spline Interpolation ');

clc, clear all ,close all
x = 0:pi/4:2*pi;
v = sin(x);
xq = 0:pi/16:2.5*pi;


vq = interp1(x,v,xq , 'spline' , 'extrap');

figure()
plot(x,v,'o' , xq , vq , '-');
legend('Samples' , 'spline extrapolation');


x = [1 2 3 4 5 ];
v = [12 16 31 10 6];
F= griddedInterpolant(x ,v ,  'pchip' , 'nearest');

xq = 0:0.1:6;
vq = F(xq);
figure();
plot(x,v,'o' ,xq ,vq , '-b');
legend ('v' , 'vq');

