function feat=featuresig2(sig,label1)
    t=(0:length(sig{1}(:,1))-1)/64;
    [~,x]=size(sig);
    for i=1:x
        for j=1:4
            feat{i,j}=trapz(t,abs(sig{i}(:,j)));%integral
        end
        for j=5:8
            feat{i,j}=mean(abs(sig{i}(:,j-4)));%mean
        end
        for j=9:12
            feat{i,j}=rms(sig{i}(:,j-8));%rms
        end
        for j=13:16
            feat{i,j}=var(sig{i}(:,j-12));%variance
        end
        for j=17:20
            feat{i,j}=trapz(t,(abs(sig{i}(:,j-16)).^2));%square integral
        end
        for j=21:24
            feat{i,j}=sum(diff(sign(diff(sig{i}(:,j-20))))~=0);
        end
        for j=25:28
            feat{i,j}=meanfreq(sig{i}(:,j-24),64);%mean frequency
        end
        for j=29:32
            feat{i,j}=medfreq(sig{i}(:,j-28),64);%median frequency
        end
        temp=getarfeat(sig{i},6);
        for j=33:56
            feat{i,j}=temp(j-32);
        end
        for j=57:60
            feat{i,j}=getwlfeat(sig{i}(:,j-56));%waveform length
        end
      
%         for j=61:64
%             feat{i,j}=peak2rms(sig{i}(:,j-60));
%         end
%         temp=wavelettransforms(sig{i});
%         for j=1:336
%             feat{i,j}=temp(j);
%         end
    end 
    for i=1:x
        feat{i,61}=label1;
       
    end
   % feat=cell2table(feat);
end