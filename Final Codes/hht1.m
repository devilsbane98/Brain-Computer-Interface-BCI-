for i=1:24
    for j=6:9
        f1=(emd(filtA{i}(j,:)));
        f1=f1{1};
        f11=[f11;f1];
        f2=(emd(filtB{i}(j,:)));
        f2=f2{1};
        f22=[f22;f2];
    end
end
