function feat=featuresig11(sig,label1,freq)
amp=.5;
t=(0:200)/64;
pi=3.14;
       angfr=2*pi*freq;
       wave=amp*sin(angfr*t)+amp;
       wave=wave';
       stimulus=[wave wave wave wave wave wave wave wave wave wave wave wave wave wave];
       len=length(sig{1}(:,1));
       for i=1:96
           feat(i,:)=cca(sig{i},stimulus(1:len,:));
           

       end
       
 feat(:,15)=label1;
       
    %feat=cell2table(feat);
end