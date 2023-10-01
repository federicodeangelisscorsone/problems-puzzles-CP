function [y] = problem_2(x)
  %% By considering the terms in the Fibonacci sequence whose values 
  % do not exceed four million, find the sum of the even-valued terms.
  
  % x = maximum value of fibonacci sequence (in this case 4 million)
  
  a = [1,2]; %start of fibonacci
  
  while  a(end) < x;
   a(end+1) = a(end)+a(end-1); % fibonacci sequence vector
  endwhile
  
  % computing which number is even
  for k = 1:length(a)
    if rem(a(k),2)==0
      b(k) = a(k); %b is the vector of even number
    endif
  endfor
  
 y = sum(b)
 
endfunction