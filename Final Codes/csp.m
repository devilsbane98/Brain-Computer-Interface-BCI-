for i=1:200
    A1{i}=filtA{i}*(filtA{i}');
    trA{i}=trace(A1{i});  
end
for i=1:24
    Ae{i}=A{i}/trA{i};
end
clear A1 trA
for i=1:200
    B1{i}=filtB{i}*(filtB{i}');
     trB{i}=trace(B1{i});   
end
 for i=1:24
      Be{i}=B{i}/trB{i};
 end
clear B1 trB

for i=1:24
    for j=1:32
        for k=1:32
            sumA{i}(j,k)+=Ae{i}(j,k);
             sumB{i}(j,k)+=Be{i}(j,k);
        end
    end
end

for i=1:24
    for j=1:32
        for k=1:32
            probA{i}(j,k)=Ae{i}(j,k)/sumA{i}(j,k);
            probB{i}(j,k)=Be{i}(j,k)/sumB{i}(j,k);
            ExpA{i}(j,k)+=(probA{i}(j,k)*Ae{i}(j,k));
            ExpB{i}(j,k)+=(probB{i}(j,k)*Be{i}(j,k));
        end
    end
end
