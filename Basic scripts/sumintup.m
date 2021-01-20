function summa = halfsum(A)
summa = 0;
[row col] = size(A);
for r = 1:row
    for c = 1:col
        if index(c) >= index(r)
            total = total + A(r,c);
        end
    end
end
summa
end