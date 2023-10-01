function [y] = problem_1(x)
%% Find the sum of all the multiples of 3 or 5 below x.

x = x-1; %x is not included 
a = 0:3:x;
b = 0:5:x; 
c = 0:15:x; % we need it in order to avoid double counting of numbers either multiple of 3 and 5

y = sum(a)+sum(b)-sum(c);

end