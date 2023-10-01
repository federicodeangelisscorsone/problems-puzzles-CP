function [n] = weirdalgorithm(n)
##Consider an algorithm that takes as input a positive integer n. 
##If n is even, he algorithm divides it by two, and if n is odd, the algorithm multiplies it by three and adds one.
##The algorithm repeats this, until n is one. For example, the sequence for n=3 is as follows:
##3→10→5→16→8→4→2→1
##
##Your task is to simulate the execution of the algorithm for a given value of n.
##
##Input: The only input line contains an integer n.
##
##Output: Print a line that contains all values of n during the algorithm.
k = 1;

while n(end) != 1
  if rem(n(end), 2) == 0;
    n(k+1) = n(k)/2;
  else
    n(k+1) = (n(k)*3)+1;
  endif
k = k+1;
end
end