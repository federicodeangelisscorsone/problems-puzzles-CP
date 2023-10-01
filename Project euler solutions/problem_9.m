function [y] = problem_9(x)
 % find pythagorean triplet in which 'a' + 'b' + 'c' = x is validated 
 
 % We can say that 'x' is an upper bound for the triplets' elements 
 % Use the Euclid's formula for generating pythagorean triplets
 
 %Create a matrix for all combination of m and n under 'x'
  for m = 2:x
   for n = 1:(m-1) % remember that m > n 
        A(m,n) = realpow(m,2) - realpow(n,2);
        B(m,n) = 2*m*n;
        C(m,n) = realpow(m,2) + realpow(n,2);
   endfor
 endfor
  
 %reshape the matrixes into vectors
 a = reshape(A,[1, prod(size(A))]); 
 b = reshape(B,[1, prod(size(B))]);
 c = reshape(C,[1, prod(size(C))]); 
   
 %eliminate the 0 elements from teh vectors
 a = a(a~=0); 
 b = b(b~=0);
 c = c(c~=0);
 
 k = 1;
 while a(k)+b(k)+c(k) ~= x
   k = k+1;
 endwhile

 y = a(k)*b(k)*c(k);