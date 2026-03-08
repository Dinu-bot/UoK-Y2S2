function [a ,r2] = linregr(x ,y )
  n = length(x);
  if length(y) ~= n
    error('x and y must be same length');
  end    
  x = x(:);
  y = y(:);
  sx = sum(x);
  sy = sum(y);
  sx2 = sum(x.*x);
  sxy = sum(x.*y);
  sy2 = sum(y.*y);

  a(1) = (n*sxy - sx*sy)/(n*sx2-sx^2);
  a(2) = sy/n-a(1)*sx/n;

  r2 = ((n*sxy-sx*sy)/sqrt(n*sx2-sx^2)/sqrt(n*sy2-sy^2))^2;

  fprintf('The regression equation is: y = %.4f * x + %.4f\n', a(1), a(2));
  xp = linspace(min(x) , max(x) , 2);
  yp = a(1)*xp + a(2);
  plot(x , y,'O' ,xp ,yp , '-');
end