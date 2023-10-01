function [y] = problem_6(x)
  %% Find the difference between the sum of the squares of the first 'x' natural numbers
 % and the square of the sum.
  
  %input x is not a vector but an integer number
  a = 1:x;
  a1 = sum(realpow(a,2));
  a2 = realpow(sum(a),2);
  y = a2-a1;
 
endfunction