function f = fss(a)

    x = [ -2 0 2 4 ];
    y = [1 0 -4 -12  ];
    yp = a(1) *(1 - exp(1 - a(2) .* x));

    disp('Current a values:'), disp(a) % Display current 'a' values
    disp('Predicted values:'), disp(yp) % Show calculated yp


    f = sum((y - yp).^2);

  disp('Current function value:'), disp(f) % Show computed f
end

 
