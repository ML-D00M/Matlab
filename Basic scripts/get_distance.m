function distance = get_distance(a,b)
[~,text,raw] = xlsread('Distances.xlsx');
for i=2:size(raw,1)
    if strcmp(text{i,1}, a)
        break
    end
end
if i>=size(raw,1)
    distance=-1;
else
    for j=2:size(raw,2)
        if strcmp(text{1,j}, b)
            distance=raw{i,j};
            break
        end
    end
    if j>=size(raw,2)
        distance = -1;
    end
end