function [y] = problem_7(x);
  %% What is the 'x'st prime number?
  
  p = list_primes(x);   %using matlab/octave uilt-in function. It gives the primes until x.
  y = p(end);           %take the last prime
  
endfunction
