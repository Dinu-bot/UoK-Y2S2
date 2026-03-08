function root = bisection(f,a,b,n)
      if f(a)*f(b)==0
          disp('one end point is a root. Bisection method will not applied')
    
      elseif f(a)*f(b)>0
          disp('There is no root in the specified interval choose another')
      else 
          disp('proceed with the rest of the bisection method to find the root ')
      end
    
      for i = 1:n
          c = (a+b)/2;
          if f(c) ==0
              fprintf('The root is c = %8.4f' , c)
              break
    
          elseif f(c)*f(a) <0
              b=c;
          else
              a=c;
          end
      end
 root= (a+b)/2;
end
