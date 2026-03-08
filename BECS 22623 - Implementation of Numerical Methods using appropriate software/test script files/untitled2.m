x1 = linspace(0.5 , 4 ,8);
my_fun = @(x) x.^2 + log(x) ;
y1 = my_fun(x1);
disp('x        f(x)');
fprintf('%8.4f %8.4f \n' , [x1 , y1]);

x = [0 : 0.01 : 5];
y = exp(-1.5 * x) .* sin(10 * x);
subplot(1, 2, 1)
plot(x, y), xlabel('x'), ylabel('exp(-1.5x)*sin(10x)'), axis([0 5 -1 1])
y = exp(-2 * x) .* sin(10 * x);
subplot(1, 2, 2)
plot(x, y), xlabel('x'), ylabel('exp(-2x)*sin(10x)'), axis([0 5 -1 1])

