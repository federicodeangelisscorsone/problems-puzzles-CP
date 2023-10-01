function [y] = problem_30(n)
  % Find the sum of all the numbers that can be written 
  % as the sum of n-th powers of their digits
 
  vector = 1:999999; %if 'n' == 5 we are focusing only on 5-digits numbers
  answers = 0;
  
  for k = 1:length(vector);
    numb = num2str(vector(k));
    
    for j = 1:length(numb)
      vec(j) = str2num(numb(j));
    end
        
    if vector(k) == sum(vec.^n);
      answers = answers + vector(k);        
    end
        
  end

  y = answers;
  
end