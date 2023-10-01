function [y] = problem_5(x)
  %% what is the smallest positive number evenly divisible by vector 'x'?
  
  k = 1;
  
  while sum(rem(k,x));  %while the sum of the reminders is nonzero go on
    k = k+1;
  endwhile                 %it stops when the sum of the reminders is zero


  y = k;
endfunction
