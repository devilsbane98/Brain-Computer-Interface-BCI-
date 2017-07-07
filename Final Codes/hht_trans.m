function hht = hht_trans(x)
    for i=1:14
        temp=hht_double(x(:,i));
        for j=128*(i-1)+1:128*i
            hht(1,j)=temp(j-(128*(i-1)));
        end
        clear temp
    end
end