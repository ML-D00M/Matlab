function [a,s] = my_rand(low,high)
a = low+rand(3,4)*(high-low);
s = sumAllElements(a);

function summa = sumAllElements(M)
v= M(:);
summa = sum(v);
