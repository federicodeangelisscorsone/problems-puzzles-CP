function [y] = problem_12(x)
%What is the value of the first triangle number to have over 'x' divisors? 
 
 %Compute the triangulars numbers using the explicit formula. We compute them
 % until the sum of the nonzeros value in the reminder is equal to 'x'.

 n = 1;
 reminders_c = 0;
 
 while reminders_c <= x
 n = n+1;
 T(n) = (n*(n+1))/2; %triangle number explicit formula 
 d = 1:T(n);
 reminders = rem(T(n),d); %computing the reminders of the triangle number 'n'
 reminders_c = sum(reminders == 0 ); %counting all zeros in the array
 endwhile
 
 
 y = (n*(n+1))/2;
 
 end