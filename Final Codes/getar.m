x1=zeros(1,84);y1=zeros(1,84);
for i=1:50
   x{i}=getarfeat(filtblue{i},6);
   x1=[x1 ;x{i}]; 
end
for i=1:25
    y{i}=getarfeat(filtwhite{i},6);
    y1=[y1 ;y{i}];
end
clear i j