f = @(x) sin(sqrt(x))-x ;
x0 = 0.5 ;
tol = 1e-4;
maxIter = 100;

x = x0;
iter = 0;

fprintf('Iter \t x \t\t  g(x) \t\t Error \n');
fprintf('------------------------------------------ \n');

while iter < maxIter
    iter = iter +1;
    x_new = f(x);
    error = abs(x_new -x);
    fprintf('%d\t %.6f \t %.6f\t %.6f \n' , iter , x ,x_new , error);

    if error <tol
        fprintf('Converge tot he point %.6f after %d iterations. \n' , x_new , iter);
        break;
    end
    x = x_new;
end

if iter == maxIter
    fprintf('Faled to converged after %d iterations \n', maxIter);
end    

