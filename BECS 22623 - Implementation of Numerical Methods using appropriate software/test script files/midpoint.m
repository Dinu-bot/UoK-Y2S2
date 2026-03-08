function I = midpoint(func , a ,b)
    fa = feval(func , a);
    fb = feval(func , b);
    c = (a+b)/2;
    fc = feval(func , c);
    I = (b-a)*fc;
end