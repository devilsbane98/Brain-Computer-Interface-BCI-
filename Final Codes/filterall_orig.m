%one
for i=1:25
    for j=1:14
    filtone{i}(:,j)=filter(bp1,one{i}(:,j));
    end
    for j=33:64
         onemod{1,i}(j-32,:)=filtone{i}(j,:);
    end
    for j=65:96
         onemod{2,i}(j-64,:)=filtone{i}(j,:);
    end
    for j=97:128
         onemod{3,i}(j-96,:)=filtone{i}(j,:);
    end
    for j=129:160
         onemod{4,i}(j-128,:)=filtone{i}(j,:);
    end
    for j=161:192
         onemod{5,i}(j-160,:)=filtone{i}(j,:);
    end
    for j=193:224
         onemod{6,i}(j-192,:)=filtone{i}(j,:);
    end
    for j=225:256
         onemod{7,i}(j-224,:)=filtone{i}(j,:);
    end
    for j=257:288
         onemod{8,i}(j-256,:)=filtone{i}(j,:);
    end
end
for i=1:8
    for j=1:25
        modone{25*(i-1)+j}=onemod{i,j};
    end
end
filtone=modone;
clear onemod modone


%four
for i=1:25
    for j=1:14
    filtfour{i}(:,j)=filter(bp1,four{i}(:,j));
    end
    for j=33:64
         fourmod{1,i}(j-32,:)=filtfour{i}(j,:);
    end
    for j=65:96
         fourmod{2,i}(j-64,:)=filtfour{i}(j,:);
    end
    for j=97:128
         fourmod{3,i}(j-96,:)=filtfour{i}(j,:);
    end
    for j=129:160
         fourmod{4,i}(j-128,:)=filtfour{i}(j,:);
    end
    for j=161:192
         fourmod{5,i}(j-160,:)=filtfour{i}(j,:);
    end
    for j=193:224
         fourmod{6,i}(j-192,:)=filtfour{i}(j,:);
    end
    for j=225:256
         fourmod{7,i}(j-224,:)=filtfour{i}(j,:);
    end
    for j=257:288
         fourmod{8,i}(j-256,:)=filtfour{i}(j,:);
    end
end
for i=1:8
    for j=1:25
        modfour{25*(i-1)+j}=fourmod{i,j};
    end
end
filtfour=modfour;
clear fourmod modfour


%two
for i=1:25
    for j=1:14
    filttwo{i}(:,j)=filter(bp1,two{i}(:,j));
    end
    for j=33:64
         twomod{1,i}(j-32,:)=filttwo{i}(j,:);
    end
    for j=65:96
         twomod{2,i}(j-64,:)=filttwo{i}(j,:);
    end
    for j=97:128
         twomod{3,i}(j-96,:)=filttwo{i}(j,:);
    end
    for j=129:160
         twomod{4,i}(j-128,:)=filttwo{i}(j,:);
    end
    for j=161:192
         twomod{5,i}(j-160,:)=filttwo{i}(j,:);
    end
    for j=193:224
         twomod{6,i}(j-192,:)=filttwo{i}(j,:);
    end
    for j=225:256
         twomod{7,i}(j-224,:)=filttwo{i}(j,:);
    end
    for j=257:288
         twomod{8,i}(j-256,:)=filttwo{i}(j,:);
    end
end
for i=1:8
    for j=1:25
        modtwo{25*(i-1)+j}=twomod{i,j};
    end
end
filttwo=modtwo;
clear twomod modtwo


%three
for i=1:25
    for j=1:14
    filtthree{i}(:,j)=filter(bp1,three{i}(:,j));
    end
    for j=33:64
         threemod{1,i}(j-32,:)=filtthree{i}(j,:);
    end
    for j=65:96
         threemod{2,i}(j-64,:)=filtthree{i}(j,:);
    end
    for j=97:128
        threemod{3,i}(j-96,:)=filtthree{i}(j,:);
    end
    for j=129:160
         threemod{4,i}(j-128,:)=filtthree{i}(j,:);
    end
    for j=161:192
         threemod{5,i}(j-160,:)=filtthree{i}(j,:);
    end
    for j=193:224
         threemod{6,i}(j-192,:)=filtthree{i}(j,:);
    end
    for j=225:256
         threemod{7,i}(j-224,:)=filtthree{i}(j,:);
    end
    for j=257:288
         threemod{8,i}(j-256,:)=filtthree{i}(j,:);
    end
end
for i=1:8
    for j=1:25
        modthree{25*(i-1)+j}=threemod{i,j};
    end
end
filtthree=modthree;
clear threemod modthree


%five
for i=1:25
    for j=1:14
    filtfive{i}(:,j)=filter(bp1,five{i}(:,j));
    end
    for j=33:64
         fivemod{1,i}(j-32,:)=filtfive{i}(j,:);
    end
    for j=65:96
         fivemod{2,i}(j-64,:)=filtfive{i}(j,:);
    end
    for j=97:128
         fivemod{3,i}(j-96,:)=filtfive{i}(j,:);
    end
    for j=129:160
         fivemod{4,i}(j-128,:)=filtfive{i}(j,:);
    end
    for j=161:192
         fivemod{5,i}(j-160,:)=filtfive{i}(j,:);
    end
    for j=193:224
         fivemod{6,i}(j-192,:)=filtfive{i}(j,:);
    end
    for j=225:256
         fivemod{7,i}(j-224,:)=filtfive{i}(j,:);
    end
    for j=257:288
         fivemod{8,i}(j-256,:)=filtfive{i}(j,:);
    end
end
for i=1:8
    for j=1:25
        modfive{25*(i-1)+j}=fivemod{i,j};
    end
end
filtfive=modfive;
clear fivemod modfive


%six
for i=1:25
    for j=1:14
    filtsix{i}(:,j)=filter(bp1,six{i}(:,j));
    end
    for j=33:64
         sixmod{1,i}(j-32,:)=filtsix{i}(j,:);
    end
    for j=65:96
         sixmod{2,i}(j-64,:)=filtsix{i}(j,:);
    end
    for j=97:128
         sixmod{3,i}(j-96,:)=filtsix{i}(j,:);
    end
    for j=129:160
         sixmod{4,i}(j-128,:)=filtsix{i}(j,:);
    end
    for j=161:192
         sixmod{5,i}(j-160,:)=filtsix{i}(j,:);
    end
    for j=193:224
         sixmod{6,i}(j-192,:)=filtsix{i}(j,:);
    end
    for j=225:256
         sixmod{7,i}(j-224,:)=filtsix{i}(j,:);
    end
    for j=257:288
         sixmod{8,i}(j-256,:)=filtsix{i}(j,:);
    end
end
for i=1:8
    for j=1:25
        modsix{25*(i-1)+j}=sixmod{i,j};
    end
end
filtsix=modsix;
clear sixmod modsix


%seven
for i=1:25
    for j=1:14
    filtseven{i}(:,j)=filter(bp1,seven{i}(:,j));
    end
    for j=33:64
         sevenmod{1,i}(j-32,:)=filtseven{i}(j,:);
    end
    for j=65:96
         sevenmod{2,i}(j-64,:)=filtseven{i}(j,:);
    end
    for j=97:128
         sevenmod{3,i}(j-96,:)=filtseven{i}(j,:);
    end
    for j=129:160
         sevenmod{4,i}(j-128,:)=filtseven{i}(j,:);
    end
    for j=161:192
         sevenmod{5,i}(j-160,:)=filtseven{i}(j,:);
    end
    for j=193:224
         sevenmod{6,i}(j-192,:)=filtseven{i}(j,:);
    end
    for j=225:256
         sevenmod{7,i}(j-224,:)=filtseven{i}(j,:);
    end
    for j=257:288
         sevenmod{8,i}(j-256,:)=filtseven{i}(j,:);
    end
end
for i=1:8
    for j=1:25
        modseven{25*(i-1)+j}=sevenmod{i,j};
    end
end
filtseven=modseven;
clear sevenmod modseven


%eight
for i=1:25
    for j=1:14
    filteight{i}(:,j)=filter(bp1,eight{i}(:,j));
    end
    for j=33:64
         eightmod{1,i}(j-32,:)=filteight{i}(j,:);
    end
    for j=65:96
         eightmod{2,i}(j-64,:)=filteight{i}(j,:);
    end
    for j=97:128
         eightmod{3,i}(j-96,:)=filteight{i}(j,:);
    end
    for j=129:160
         eightmod{4,i}(j-128,:)=filteight{i}(j,:);
    end
    for j=161:192
         eightmod{5,i}(j-160,:)=filteight{i}(j,:);
    end
    for j=193:224
         eightmod{6,i}(j-192,:)=filteight{i}(j,:);
    end
    for j=225:256
         eightmod{7,i}(j-224,:)=filteight{i}(j,:);
    end
    for j=257:288
         eightmod{8,i}(j-256,:)=filteight{i}(j,:);
    end
end
for i=1:8
    for j=1:25
        modeight{25*(i-1)+j}=eightmod{i,j};
    end
end
filteight=modeight;
clear eightmod modeight


%nine
for i=1:25
    for j=1:14
    filtnine{i}(:,j)=filter(bp1,nine{i}(:,j));
    end
    for j=33:64
         ninemod{1,i}(j-32,:)=filtnine{i}(j,:);
    end
    for j=65:96
         ninemod{2,i}(j-64,:)=filtnine{i}(j,:);
    end
    for j=97:128
         ninemod{3,i}(j-96,:)=filtnine{i}(j,:);
    end
    for j=129:160
         ninemod{4,i}(j-128,:)=filtnine{i}(j,:);
    end
    for j=161:192
         ninemod{5,i}(j-160,:)=filtnine{i}(j,:);
    end
    for j=193:224
         ninemod{6,i}(j-192,:)=filtnine{i}(j,:);
    end
    for j=225:256
         ninemod{7,i}(j-224,:)=filtnine{i}(j,:);
    end
    for j=257:288
         ninemod{8,i}(j-256,:)=filtnine{i}(j,:);
    end
end
for i=1:8
    for j=1:25
        modnine{25*(i-1)+j}=ninemod{i,j};
    end
end
filtnine=modnine;
clear ninemod modnine


%zero
for i=1:25
    for j=1:14
    filtzero{i}(:,j)=filter(bp1,zero{i}(:,j));
    end
    for j=33:64
         zeromod{1,i}(j-32,:)=filtzero{i}(j,:);
    end
    for j=65:96
         zeromod{2,i}(j-64,:)=filtzero{i}(j,:);
    end
    for j=97:128
         zeromod{3,i}(j-96,:)=filtzero{i}(j,:);
    end
    for j=129:160
         zeromod{4,i}(j-128,:)=filtzero{i}(j,:);
    end
    for j=161:192
         zeromod{5,i}(j-160,:)=filtzero{i}(j,:);
    end
    for j=193:224
         zeromod{6,i}(j-192,:)=filtzero{i}(j,:);
    end
    for j=225:256
         zeromod{7,i}(j-224,:)=filtzero{i}(j,:);
    end
    for j=257:288
         zeromod{8,i}(j-256,:)=filtzero{i}(j,:);
    end
end
for i=1:8
    for j=1:25
        modzero{25*(i-1)+j}=zeromod{i,j};
    end
end
filtzero=modzero;
clear modzero zeromod


%Q
for i=1:25
    for j=1:14
    filtQ{i}(:,j)=filter(bp1,Q{i}(:,j));
    end
    for j=33:64
         Qmod{1,i}(j-32,:)=filtQ{i}(j,:);
    end
    for j=65:96
         Qmod{2,i}(j-64,:)=filtQ{i}(j,:);
    end
    for j=97:128
         Qmod{3,i}(j-96,:)=filtQ{i}(j,:);
    end
    for j=129:160
         Qmod{4,i}(j-128,:)=filtQ{i}(j,:);
    end
    for j=161:192
         Qmod{5,i}(j-160,:)=filtQ{i}(j,:);
    end
    for j=193:224
         Qmod{6,i}(j-192,:)=filtQ{i}(j,:);
    end
    for j=225:256
         Qmod{7,i}(j-224,:)=filtQ{i}(j,:);
    end
    for j=257:288
         Qmod{8,i}(j-256,:)=filtQ{i}(j,:);
    end
end
for i=1:8
    for j=1:25
        modQ{25*(i-1)+j}=Qmod{i,j};
    end
end
filtQ=modQ;
clear Qmod modQ


%W
for i=1:25
    for j=1:14
    filtW{i}(:,j)=filter(bp1,W{i}(:,j));
    end
    for j=33:64
         Wmod{1,i}(j-32,:)=filtW{i}(j,:);
    end
    for j=65:96
         Wmod{2,i}(j-64,:)=filtW{i}(j,:);
    end
    for j=97:128
         Wmod{3,i}(j-96,:)=filtW{i}(j,:);
    end
    for j=129:160
         Wmod{4,i}(j-128,:)=filtW{i}(j,:);
    end
    for j=161:192
         Wmod{5,i}(j-160,:)=filtW{i}(j,:);
    end
    for j=193:224
         Wmod{6,i}(j-192,:)=filtW{i}(j,:);
    end
    for j=225:256
         Wmod{7,i}(j-224,:)=filtW{i}(j,:);
    end
    for j=257:288
         Wmod{8,i}(j-256,:)=filtW{i}(j,:);
    end
end
for i=1:8
    for j=1:25
        modW{25*(i-1)+j}=Wmod{i,j};
    end
end
filtW=modW;
clear Wmod modW


%E
for i=1:25
    for j=1:14
    filtE{i}(:,j)=filter(bp1,E{i}(:,j));
    end
    for j=33:64
         Emod{1,i}(j-32,:)=filtE{i}(j,:);
    end
    for j=65:96
         Emod{2,i}(j-64,:)=filtE{i}(j,:);
    end
    for j=97:128
         Emod{3,i}(j-96,:)=filtE{i}(j,:);
    end
    for j=129:160
         Emod{4,i}(j-128,:)=filtE{i}(j,:);
    end
    for j=161:192
         Emod{5,i}(j-160,:)=filtE{i}(j,:);
    end
    for j=193:224
         Emod{6,i}(j-192,:)=filtE{i}(j,:);
    end
    for j=225:256
         Emod{7,i}(j-224,:)=filtE{i}(j,:);
    end
    for j=257:288
         Emod{8,i}(j-256,:)=filtE{i}(j,:);
    end
end
for i=1:8
    for j=1:25
        modE{25*(i-1)+j}=Emod{i,j};
    end
end
filtE=modE;
clear Emod modE


%R
for i=1:25
    for j=1:14
    filtR{i}(:,j)=filter(bp1,R{i}(:,j));
    end
    for j=33:64
         Rmod{1,i}(j-32,:)=filtR{i}(j,:);
    end
    for j=65:96
         Rmod{2,i}(j-64,:)=filtR{i}(j,:);
    end
    for j=97:128
         Rmod{3,i}(j-96,:)=filtR{i}(j,:);
    end
    for j=129:160
         Rmod{4,i}(j-128,:)=filtR{i}(j,:);
    end
    for j=161:192
         Rmod{5,i}(j-160,:)=filtR{i}(j,:);
    end
    for j=193:224
         Rmod{6,i}(j-192,:)=filtR{i}(j,:);
    end
    for j=225:256
         Rmod{7,i}(j-224,:)=filtR{i}(j,:);
    end
    for j=257:288
         Rmod{8,i}(j-256,:)=filtR{i}(j,:);
    end
end
for i=1:8
    for j=1:25
        modR{25*(i-1)+j}=Rmod{i,j};
    end
end
filtR=modR;
clear Rmod modR


%T
for i=1:25
    for j=1:14
    filtT{i}(:,j)=filter(bp1,T{i}(:,j));
    end
    for j=33:64
         Tmod{1,i}(j-32,:)=filtT{i}(j,:);
    end
    for j=65:96
         Tmod{2,i}(j-64,:)=filtT{i}(j,:);
    end
    for j=97:128
         Tmod{3,i}(j-96,:)=filtT{i}(j,:);
    end
    for j=129:160
         Tmod{4,i}(j-128,:)=filtT{i}(j,:);
    end
    for j=161:192
         Tmod{5,i}(j-160,:)=filtT{i}(j,:);
    end
    for j=193:224
         Tmod{6,i}(j-192,:)=filtT{i}(j,:);
    end
    for j=225:256
         Tmod{7,i}(j-224,:)=filtT{i}(j,:);
    end
    for j=257:288
         Tmod{8,i}(j-256,:)=filtT{i}(j,:);
    end
end
for i=1:8
    for j=1:25
        modT{25*(i-1)+j}=Tmod{i,j};
    end
end
filtT=modT;
clear Tmod modT


%Y
for i=1:25
    for j=1:14
    filtY{i}(:,j)=filter(bp1,Y{i}(:,j));
    end
    for j=33:64
         Ymod{1,i}(j-32,:)=filtY{i}(j,:);
    end
    for j=65:96
         Ymod{2,i}(j-64,:)=filtY{i}(j,:);
    end
    for j=97:128
         Ymod{3,i}(j-96,:)=filtY{i}(j,:);
    end
    for j=129:160
         Ymod{4,i}(j-128,:)=filtY{i}(j,:);
    end
    for j=161:192
         Ymod{5,i}(j-160,:)=filtY{i}(j,:);
    end
    for j=193:224
         Ymod{6,i}(j-192,:)=filtY{i}(j,:);
    end
    for j=225:256
         Ymod{7,i}(j-224,:)=filtY{i}(j,:);
    end
    for j=257:288
         Ymod{8,i}(j-256,:)=filtY{i}(j,:);
    end
end
for i=1:8
    for j=1:25
        modY{25*(i-1)+j}=Ymod{i,j};
    end
end
filtY=modY;
clear Ymod modY


%U
for i=1:25
    for j=1:14
    filtU{i}(:,j)=filter(bp1,U{i}(:,j));
    end
    for j=33:64
         Umod{1,i}(j-32,:)=filtU{i}(j,:);
    end
    for j=65:96
         Umod{2,i}(j-64,:)=filtU{i}(j,:);
    end
    for j=97:128
         Umod{3,i}(j-96,:)=filtU{i}(j,:);
    end
    for j=129:160
         Umod{4,i}(j-128,:)=filtU{i}(j,:);
    end
    for j=161:192
         Umod{5,i}(j-160,:)=filtU{i}(j,:);
    end
    for j=193:224
         Umod{6,i}(j-192,:)=filtU{i}(j,:);
    end
    for j=225:256
         Umod{7,i}(j-224,:)=filtU{i}(j,:);
    end
    for j=257:288
         Umod{8,i}(j-256,:)=filtU{i}(j,:);
    end
end
for i=1:8
    for j=1:25
        modU{25*(i-1)+j}=Umod{i,j};
    end
end
filtU=modU;
clear Umod modU


%I
for i=1:25
    for j=1:14
    filtI{i}(:,j)=filter(bp1,I{i}(:,j));
    end
    for j=33:64
         Imod{1,i}(j-32,:)=filtI{i}(j,:);
    end
    for j=65:96
         Imod{2,i}(j-64,:)=filtI{i}(j,:);
    end
    for j=97:128
         Imod{3,i}(j-96,:)=filtI{i}(j,:);
    end
    for j=129:160
         Imod{4,i}(j-128,:)=filtI{i}(j,:);
    end
    for j=161:192
         Imod{5,i}(j-160,:)=filtI{i}(j,:);
    end
    for j=193:224
         Imod{6,i}(j-192,:)=filtI{i}(j,:);
    end
    for j=225:256
         Imod{7,i}(j-224,:)=filtI{i}(j,:);
    end
    for j=257:288
         Imod{8,i}(j-256,:)=filtI{i}(j,:);
    end
end
for i=1:8
    for j=1:25
        modI{25*(i-1)+j}=Imod{i,j};
    end
end
filtI=modI;
clear Imod modI


%O
for i=1:25
    for j=1:14
    filtO{i}(:,j)=filter(bp1,O{i}(:,j));
    end
    for j=33:64
         Omod{1,i}(j-32,:)=filtO{i}(j,:);
    end
    for j=65:96
         Omod{2,i}(j-64,:)=filtO{i}(j,:);
    end
    for j=97:128
         Omod{3,i}(j-96,:)=filtO{i}(j,:);
    end
    for j=129:160
         Omod{4,i}(j-128,:)=filtO{i}(j,:);
    end
    for j=161:192
         Omod{5,i}(j-160,:)=filtO{i}(j,:);
    end
    for j=193:224
         Omod{6,i}(j-192,:)=filtO{i}(j,:);
    end
    for j=225:256
         Omod{7,i}(j-224,:)=filtO{i}(j,:);
    end
    for j=257:288
         Omod{8,i}(j-256,:)=filtO{i}(j,:);
    end
end
for i=1:8
    for j=1:25
        modYO25*(i-1)+j}=Omod{i,j};
    end
end
filtO=modO;
clear Omod modO


%P
for i=1:25
    for j=1:14
    filtP{i}(:,j)=filter(bp1,P{i}(:,j));
    end
    for j=33:64
         Pmod{1,i}(j-32,:)=filtP{i}(j,:);
    end
    for j=65:96
         Pmod{2,i}(j-64,:)=filtP{i}(j,:);
    end
    for j=97:128
         Pmod{3,i}(j-96,:)=filtP{i}(j,:);
    end
    for j=129:160
         Pmod{4,i}(j-128,:)=filtP{i}(j,:);
    end
    for j=161:192
         Pmod{5,i}(j-160,:)=filtP{i}(j,:);
    end
    for j=193:224
         Pmod{6,i}(j-192,:)=filtP{i}(j,:);
    end
    for j=225:256
         Pmod{7,i}(j-224,:)=filtP{i}(j,:);
    end
    for j=257:288
         Pmod{8,i}(j-256,:)=filtP{i}(j,:);
    end
end
for i=1:8
    for j=1:25
        modP{25*(i-1)+j}=Pmod{i,j};
    end
end
filtP=modP;
clear Pmod modP

%A
for i=1:25
    for j=1:14
    filtA{i}(:,j)=filter(bp1,A{i}(:,j));
    end
    for j=33:64
         Amod{1,i}(j-32,:)=filtA{i}(j,:);
    end
    for j=65:96
         Amod{2,i}(j-64,:)=filtA{i}(j,:);
    end
    for j=97:128
         Amod{3,i}(j-96,:)=filtA{i}(j,:);
    end
    for j=129:160
         Amod{4,i}(j-128,:)=filtA{i}(j,:);
    end
    for j=161:192
         Amod{5,i}(j-160,:)=filtA{i}(j,:);
    end
    for j=193:224
         Amod{6,i}(j-192,:)=filtA{i}(j,:);
    end
    for j=225:256
         Amod{7,i}(j-224,:)=filtA{i}(j,:);
    end
    for j=257:288
         Amod{8,i}(j-256,:)=filtA{i}(j,:);
    end
end
for i=1:8
    for j=1:25
        modA{25*(i-1)+j}=Amod{i,j};
    end
end
filtA=modA;
clear Amod modA


%B
for i=1:25
    for j=1:14
    filtB{i}(:,j)=filter(bp1,B{i}(:,j));
    end
    for j=33:64
         Bmod{1,i}(j-32,:)=filtB{i}(j,:);
    end
    for j=65:96
         Bmod{2,i}(j-64,:)=filtB{i}(j,:);
    end
    for j=97:128
        Bmod{3,i}(j-96,:)=filtB{i}(j,:);
    end
    for j=129:160
         Bmod{4,i}(j-128,:)=filtB{i}(j,:);
    end
    for j=161:192
         Bmod{5,i}(j-160,:)=filtB{i}(j,:);
    end
    for j=193:224
         Bmod{6,i}(j-192,:)=filtB{i}(j,:);
    end
    for j=225:256
         Bmod{7,i}(j-224,:)=filtB{i}(j,:);
    end
    for j=257:288
         Bmod{8,i}(j-256,:)=filtB{i}(j,:);
    end
end
for i=1:8
    for j=1:25
        modB{25*(i-1)+j}=Bmod{i,j};
    end
end
filtB=modB;
clear Bmod modB

clear i j