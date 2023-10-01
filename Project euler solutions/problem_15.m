function [y] = problem_15(n)
  % How many routes (going right & down) are there through a nxn grid,
  %% from the top left cornet to the bottom right corner?
 
  % Use the triangle of pascal
  y = sum(sum(pascal(n)))+1;
  
endfunction