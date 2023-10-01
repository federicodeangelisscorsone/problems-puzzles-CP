function [y] = problem_34(vector)
  % Find the sum of all numbers which are equal
  % to the sum of the factorial of their digits.
 
  % it's similar to problem number 30
  
  vector = 1:999999;
  answers = 0;
  
  for k = 1:length(vector);
    numb = num2str(vector(k));
    
    for j = 1:length(numb)
      vec(j) = str2num(numb(j));
    end
        
    if vector(k) == sum(factorial(vec));
      answers = answers + vector(k);        
    end
        
  end

  y = answers-(1+2);
  
end