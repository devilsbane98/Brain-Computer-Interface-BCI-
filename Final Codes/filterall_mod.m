function [out]=filterall_mod(data,bp1)
    [~,x]=size(data);
    for i=1:x
        for j=1:14
        filtdata{i}(:,j)=filter(bp1,data{i}(:,j));
        end
        for j=33:96
             datamod{1,i}(j-32,:)=filtdata{i}(j,:);
        end
        for j=97:160
             datamod{2,i}(j-96,:)=filtdata{i}(j,:);
        end
        for j=161:224
             datamod{3,i}(j-160,:)=filtdata{i}(j,:);
        end
        for j=225:288
             datamod{4,i}(j-224,:)=filtdata{i}(j,:);
        end
    end
    for i=1:4
        for j=1:x
            out{x*(i-1)+j}=datamod{i,j};
        end
    end
end