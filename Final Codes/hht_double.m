function feat=hht_double(x)
    test=emd(x);
    for i=1:4
        for j=1:32
            feat(32*(i-1)+j)=test{i}(j);
        end
    end
end