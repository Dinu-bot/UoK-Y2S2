func = @(x) exp(-x) + x ;
a=1;
b=2;
answer = midpoint(func , a,b);

fprintf('The Interagal value is %.7f ' , answer);
