function [root , root_vector] = Newton(f,fp,seed,maxitr,m)
 if abs( f(seed)) < 0.5*10^(-16)
     disp('Your seed is a good approximation to the root');
     return
 end

 root_vector = zeros(1,maxitr);

 for i = 1:maxitr
     seed1 = seed - m*f(seed)/fp(seed);
     seed = seed1;

     root_vector(i) = seed1;
 end

 root = seed1;


end
 