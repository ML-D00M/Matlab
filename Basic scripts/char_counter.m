function charnum = char_counter(fname,A)
fid = fopen(fname,'rt');
if fid < 0
    charnum = -1;
    return
end
if fid >0 && ischar(A)
    k=0;
    oneread = fgets(fid);
    while ischar(oneread)
        k = k + count(oneread,A);
        oneread = fgets(fid);
    end
    charnum = k;
else 
    charnum = -1;
end
fclose(fid);
