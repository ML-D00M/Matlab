function indices = saddle(M)
X = (max(M,[],2))';  % operation on row arranged in a column i.e maximum of each row arranged in a column and then transpose gives the row vector of  the same
Y = min(M,[],1); %operation on column arranged in  row i.e. minimun of each column arranged in a row
count=0;
for i=1:size(X,2)
    for j=1:size(Y,2)
        if X(i)==Y(j)
            count = count+1;
            indices(count,:) = [i,j];
        end
    end
end
if count==0
    indices = double.empty;
end