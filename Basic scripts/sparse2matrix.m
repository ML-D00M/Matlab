function matrix = sparse2matrix(cellvec)
A=cellvec{1};
b=cellvec{2};
mat(A(1),A(2))=b;
mat(:,:)=b;
s=size(cellvec);
for ii = 3:s(2)
    mat(cellvec{ii}(1),cellvec{ii}(2))=cellvec{ii}(3);
end
matrix=mat;