
function pr=predt(data,w,class)
prdt=zeroes(40);
for i=1:40
    for j=i+1:40
        pre=predict(class{i,j},log(var(w{i,j}*data)));
        if(pre==i)
            prdt[i]++;
        end
        if(pre==j)
            prdt[j]++;
        end
    end
end
%sumprdt=sum(prdt);
%for k=1:40
 %   prob[k]=prdt[k]/sumprdt;
%end
pr=char(max(prdt));

end

