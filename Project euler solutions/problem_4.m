function [y] = problem_4(a,b)
  %% Find the largest palindrome made from the product of two 3-digit numbers.
  
  %as input you specify 2 numbers: the code is going to compute the product for the
  %numbers between 'a' and 'b' . put a = 100 and b = 999 to solve the problem
  
  x = a:b;
  
  %this is the matrix of product between selected numbers
 for k = 1:length(x);
   for j = k:length(x);
     A(k,j)=x(k)*x(j);
   endfor
 endfor
  
  vector = reshape(A,[1, prod(size(A))]); %reshape the matrix into a vector
  vector = vector(vector~=0); %eliminate the 0 elements of the vector
  
  %check if the number is palindromic
  for k = 1:length(vector);
    if vector(k) == str2num(fliplr(num2str(vector(k))));
      palindromic_numbers(k)=vector(k); %vector with palindromic numbers
    endif
  endfor

  y = max(palindromic_numbers);
