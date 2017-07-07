function feat=getfeatx(sig)
    t=(0:length(sig(:,1))-1)/128;
    for j=1:14
        feat(1,j)=trapz(t,abs(sig(:,j)));
    end
    for j=15:28
        feat(1,j)=mean(abs(sig(:,j-14)));
    end
    for j=29:42
        feat(1,j)=rms(sig(:,j-28));
    end
    for j=43:56
        feat(1,j)=var(sig(:,j-42));
    end
    for j=57:70
        feat(1,j)=trapz(t,(abs(sig(:,j-56)).^2));
    end
    for j=71:84
        feat(1,j)=sum(diff(sign(diff(sig(:,j-70))))~=0);
    end
    for j=85:98
        feat(1,j)=meanfreq(sig(:,j-84),128);
    end
    for j=99:112
        feat(1,j)=medfreq(sig(:,j-98),128);
    end
    temp=getarfeat(sig,6);
    for j=113:196
        feat(1,j)=temp(j-112);
    end
    for j=197:210
        feat(1,j)=getwlfeat(sig(:,j-196));
    end
end