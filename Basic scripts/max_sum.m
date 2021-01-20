function [summa, index] = max_sum(v,n)
if n > v 
    summa = 0;
    index = -1;
elseif n <= 0
    summa = 0;
    index = -1;
elseif ~isinteger(n)
    summa = 0;
    index = -1;
end

summa = 0;
index = 1;

for i = v
    chunk = v(i:i+n-1);
    new_sum = sum(chunk);
    if new_sum > summa
        summa = new_sum;
        index = i;
    elseif v-i<n
        break
    end
end

  summa_new = v(i) + v(i+1) + v(i+2);