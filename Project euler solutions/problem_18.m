function [y] = problem_18(x)
  
  %% Find the maximum total from top to bottom of the .txt triangle
  % import data (I downloaded the triangle and saved in a txt file)
  
  %% x = dlmread('problem_18data.txt')
  
  %it's better if we start from the bottom. Less CPU usage
  
  %setup
  [r, c] = size(x);
  triangle = zeros(r,c);
  
  for k = r-1:-1:2
    %let's compute the length of nonzeros element in the matrix rows
    nz_up = length(nonzeros(x(k,:)));
    nz_down = length(nonzeros(x(k+1,:)));
    
    %vector sum between rows 
    a = x(k,1:nz_up)+x(k+1,1:nz_down-1);
    b = x(k,1:nz_up)+x(k+1,2:nz_down);
    
    %we choose the greater elements and then modify original triangle
    x(k,1:nz_up) = max(a,b);
  end
  
  %we sum the first row with the second one
  s = x(1,1);
  y = max(s+x(k,1),s+x(k,2));
  
end