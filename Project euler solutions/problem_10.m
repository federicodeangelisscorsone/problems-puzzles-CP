function [y] = problem_10(x);
  %% Find the sum of all the primes below x
  
  y = sum(primes(x));   %using matlab/octave built-in function. It gives the 
                              %primes until x.
  
endfunction
