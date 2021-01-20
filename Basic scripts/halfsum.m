function [summa, index] = max_sum(v,n)
if n > v 
    summa = 0;
    index = -1;
end
summa = 0;
index = 1;
for i = v
    if sum(v(i):v(i+n-1)) > summa
        summa = sum(v(i):v(i+n-1));
        index = i;
    
end

end