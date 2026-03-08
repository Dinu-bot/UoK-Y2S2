function x  = gen_backSub(A,b)
   n = length(b);
   x= zeros(1,n)';
   for i  =  n : -1 : 1
       sum = 0;
       for j = i+1 : n 
           sum = sum +A(i,j)*x(j);
       end

       x(i) = (b(i) - sum)/A(i,i);
   end
end
