A2 = [1 -2 1 ; 0 4 -3 ; 0 0 -3];
b1 = [2 ,1,3]';

x = gen_backSub(A2 , b1);
disp(x);