for i=1:14
       filtx(:,i)=filter(bp1,D{1}(:,i));
    end
    for i=33:64
        modx(i-32,:)=filtx(i,:);
    end
    feat=getfeatx(modx);
    s=char(predict(classifier,feat))