function [y] = problem_14(x)
 %Which starting number, under 'x', produces the longest chain using the Collatz
 % iterative sequence?

 starting_number = 1:x; %a vector of starting numbers
  
 for k = 2:length(starting_number)
   numb = starting_number(k);
   j(k) = 1; %counter 
   
   while numb ~= 1
     j(k) = j(k)+1;
     
     if rem(numb,2) == 0
      numb = numb/2;
     else
      numb = (numb*3)+1;
     endif 
       
   endwhile
 endfor

 [s, i] = sort(j);
 y = i(end);
 
endfunction