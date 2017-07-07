for i=1:24
    for j=6:9
    filtspace{i}(:,j-5)=filter(bp1,space{i}(:,j));
    end
    for j=33:64
         spacemod{1,i}(j-32,:)=filtspace{i}(j,:);
    end
    for j=65:96
         spacemod{2,i}(j-64,:)=filtspace{i}(j,:);
    end
    for j=97:128
         spacemod{3,i}(j-96,:)=filtspace{i}(j,:);
    end
    for j=129:160
         spacemod{4,i}(j-128,:)=filtspace{i}(j,:);
    end
    for j=161:192
         spacemod{5,i}(j-160,:)=filtspace{i}(j,:);
    end
    for j=193:224
         spacemod{6,i}(j-192,:)=filtspace{i}(j,:);
    end
    for j=225:256
         spacemod{7,i}(j-224,:)=filtspace{i}(j,:);
    end
    for j=257:288
         spacemod{8,i}(j-256,:)=filtspace{i}(j,:);
    end
end
for i=1:8
    for j=1:24
        modspace{24*(i-1)+j}=spacemod{i,j};
    end
end
filtspace=modspace;
clear spacemod modspace


for i=1:24
    for j=6:9
    filtback{i}(:,j-5)=filter(bp1,back{i}(:,j));
    end
    for j=33:64
         backmod{1,i}(j-32,:)=filtback{i}(j,:);
    end
    for j=65:96
         backmod{2,i}(j-64,:)=filtback{i}(j,:);
    end
    for j=97:128
         backmod{3,i}(j-96,:)=filtback{i}(j,:);
    end
    for j=129:160
         backmod{4,i}(j-128,:)=filtback{i}(j,:);
    end
    for j=161:192
         backmod{5,i}(j-160,:)=filtback{i}(j,:);
    end
    for j=193:224
         backmod{6,i}(j-192,:)=filtback{i}(j,:);
    end
    for j=225:256
         backmod{7,i}(j-224,:)=filtback{i}(j,:);
    end
    for j=257:288
         backmod{8,i}(j-256,:)=filtback{i}(j,:);
    end
end
for i=1:8
    for j=1:24
        modback{24*(i-1)+j}=backmod{i,j};
    end
end
filtback=modback;
clear backmod modback


for i=1:24
    for j=6:9
    filtcomma{i}(:,j-5)=filter(bp1,comma{i}(:,j));
    end
    for j=33:64
         commamod{1,i}(j-32,:)=filtcomma{i}(j,:);
    end
    for j=65:96
         commamod{2,i}(j-64,:)=filtcomma{i}(j,:);
    end
    for j=97:128
         commamod{3,i}(j-96,:)=filtcomma{i}(j,:);
    end
    for j=129:160
         commamod{4,i}(j-128,:)=filtcomma{i}(j,:);
    end
    for j=161:192
         commamod{5,i}(j-160,:)=filtcomma{i}(j,:);
    end
    for j=193:224
         commamod{6,i}(j-192,:)=filtcomma{i}(j,:);
    end
    for j=225:256
         commamod{7,i}(j-224,:)=filtcomma{i}(j,:);
    end
    for j=257:288
         commamod{8,i}(j-256,:)=filtcomma{i}(j,:);
    end
end
for i=1:8
    for j=1:24
        modcomma{24*(i-1)+j}=commamod{i,j};
    end
end
filtcomma=modcomma;
clear commamod modcomma

for i=1:24
    for j=6:9
    filtdot{i}(:,j-5)=filter(bp1,dot{i}(:,j));
    end
    for j=33:64
         dotmod{1,i}(j-32,:)=filtdot{i}(j,:);
    end
    for j=65:96
         dotmod{2,i}(j-64,:)=filtdot{i}(j,:);
    end
    for j=97:128
         dotmod{3,i}(j-96,:)=filtdot{i}(j,:);
    end
    for j=129:160
         dotmod{4,i}(j-128,:)=filtdot{i}(j,:);
    end
    for j=161:192
         dotmod{5,i}(j-160,:)=filtdot{i}(j,:);
    end
    for j=193:224
         dotmod{6,i}(j-192,:)=filtdot{i}(j,:);
    end
    for j=225:256
         dotmod{7,i}(j-224,:)=filtdot{i}(j,:);
    end
    for j=257:288
         dotmod{8,i}(j-256,:)=filtdot{i}(j,:);
    end
end
for i=1:8
    for j=1:24
        moddot{24*(i-1)+j}=dotmod{i,j};
    end
end
filtdot=moddot;
clear dotmod moddot


%one
for i=1:24
    for j=6:9
    filtone{i}(:,j-5)=filter(bp1,one{i}(:,j));
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
    for j=1:24
        modone{24*(i-1)+j}=onemod{i,j};
    end
end
filtone=modone;
clear onemod modone


%four
for i=1:24
    for j=6:9
    filtfour{i}(:,j-5)=filter(bp1,four{i}(:,j));
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
    for j=1:24
        modfour{24*(i-1)+j}=fourmod{i,j};
    end
end
filtfour=modfour;
clear fourmod modfour


%two
for i=1:24
    for j=6:9
    filttwo{i}(:,j-5)=filter(bp1,two{i}(:,j));
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
    for j=1:24
        modtwo{24*(i-1)+j}=twomod{i,j};
    end
end
filttwo=modtwo;
clear twomod modtwo


%three
for i=1:24
    for j=6:9
    filtthree{i}(:,j-5)=filter(bp1,three{i}(:,j));
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
    for j=1:24
        modthree{24*(i-1)+j}=threemod{i,j};
    end
end
filtthree=modthree;
clear threemod modthree


%five
for i=1:24
    for j=6:9
    filtfive{i}(:,j-5)=filter(bp1,five{i}(:,j));
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
    for j=1:24
        modfive{24*(i-1)+j}=fivemod{i,j};
    end
end
filtfive=modfive;
clear fivemod modfive


%six
for i=1:24
    for j=6:9
    filtsix{i}(:,j-5)=filter(bp1,six{i}(:,j));
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
    for j=1:24
        modsix{24*(i-1)+j}=sixmod{i,j};
    end
end
filtsix=modsix;
clear sixmod modsix


%seven
for i=1:24
    for j=6:9
    filtseven{i}(:,j-5)=filter(bp1,seven{i}(:,j));
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
    for j=1:24
        modseven{24*(i-1)+j}=sevenmod{i,j};
    end
end
filtseven=modseven;
clear sevenmod modseven


%eight
for i=1:24
    for j=6:9
    filteight{i}(:,j-5)=filter(bp1,eight{i}(:,j));
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
    for j=1:24
        modeight{24*(i-1)+j}=eightmod{i,j};
    end
end
filteight=modeight;
clear eightmod modeight


%nine
for i=1:24
    for j=6:9
    filtnine{i}(:,j-5)=filter(bp1,nine{i}(:,j));
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
    for j=1:24
        modnine{24*(i-1)+j}=ninemod{i,j};
    end
end
filtnine=modnine;
clear ninemod modnine


%zero
for i=1:24
    for j=6:9
    filtzero{i}(:,j-5)=filter(bp1,zero{i}(:,j));
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
    for j=1:24
        modzero{24*(i-1)+j}=zeromod{i,j};
    end
end
filtzero=modzero;
clear modzero zeromod


%A
for i=1:24
	for j=6:9
		filtA{i}(:,j-5)=filter(bp1,A{i}(:,j));
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
	for j=1:24
		modA{24*(i-1)+j}=Amod{i,j};
	end
end
filtA=modA;
clear Amod modA


%B
for i=1:24
	for j=6:9
		filtB{i}(:,j-5)=filter(bp1,B{i}(:,j));
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
	for j=1:24
		modB{24*(i-1)+j}=Bmod{i,j};
	end
end
filtB=modB;
clear Bmod modB


%C
for i=1:24
	for j=6:9
		filtC{i}(:,j-5)=filter(bp1,C{i}(:,j));
	end
	for j=33:64
		Cmod{1,i}(j-32,:)=filtC{i}(j,:);
	end
	for j=65:96
		Cmod{2,i}(j-64,:)=filtC{i}(j,:);
	end
	for j=97:128
		Cmod{3,i}(j-96,:)=filtC{i}(j,:);
	end
	for j=129:160
		Cmod{4,i}(j-128,:)=filtC{i}(j,:);
	end
	for j=161:192
		Cmod{5,i}(j-160,:)=filtC{i}(j,:);
	end
	for j=193:224
		Cmod{6,i}(j-192,:)=filtC{i}(j,:);
	end
	for j=225:256
		Cmod{7,i}(j-224,:)=filtC{i}(j,:);
	end
	for j=257:288
		Cmod{8,i}(j-256,:)=filtC{i}(j,:);
	end
end
for i=1:8
	for j=1:24
		modC{24*(i-1)+j}=Cmod{i,j};
	end
end
filtC=modC;
clear Cmod modC


%D
for i=1:24
	for j=6:9
		filtD{i}(:,j-5)=filter(bp1,D{i}(:,j));
	end
	for j=33:64
		Dmod{1,i}(j-32,:)=filtD{i}(j,:);
	end
	for j=65:96
		Dmod{2,i}(j-64,:)=filtD{i}(j,:);
	end
	for j=97:128
		Dmod{3,i}(j-96,:)=filtD{i}(j,:);
	end
	for j=129:160
		Dmod{4,i}(j-128,:)=filtD{i}(j,:);
	end
	for j=161:192
		Dmod{5,i}(j-160,:)=filtD{i}(j,:);
	end
	for j=193:224
		Dmod{6,i}(j-192,:)=filtD{i}(j,:);
	end
	for j=225:256
		Dmod{7,i}(j-224,:)=filtD{i}(j,:);
	end
	for j=257:288
		Dmod{8,i}(j-256,:)=filtD{i}(j,:);
	end
end
for i=1:8
	for j=1:24
		modD{24*(i-1)+j}=Dmod{i,j};
	end
end
filtD=modD;
clear Dmod modD


%E
for i=1:24
	for j=6:9
		filtE{i}(:,j-5)=filter(bp1,E{i}(:,j));
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
	for j=1:24
		modE{24*(i-1)+j}=Emod{i,j};
	end
end
filtE=modE;
clear Emod modE


%F
for i=1:24
	for j=6:9
		filtF{i}(:,j-5)=filter(bp1,F{i}(:,j));
	end
	for j=33:64
		Fmod{1,i}(j-32,:)=filtF{i}(j,:);
	end
	for j=65:96
		Fmod{2,i}(j-64,:)=filtF{i}(j,:);
	end
	for j=97:128
		Fmod{3,i}(j-96,:)=filtF{i}(j,:);
	end
	for j=129:160
		Fmod{4,i}(j-128,:)=filtF{i}(j,:);
	end
	for j=161:192
		Fmod{5,i}(j-160,:)=filtF{i}(j,:);
	end
	for j=193:224
		Fmod{6,i}(j-192,:)=filtF{i}(j,:);
	end
	for j=225:256
		Fmod{7,i}(j-224,:)=filtF{i}(j,:);
	end
	for j=257:288
		Fmod{8,i}(j-256,:)=filtF{i}(j,:);
	end
end
for i=1:8
	for j=1:24
		modF{24*(i-1)+j}=Fmod{i,j};
	end
end
filtF=modF;
clear Fmod modF


%G
for i=1:24
	for j=6:9
		filtG{i}(:,j-5)=filter(bp1,G{i}(:,j));
	end
	for j=33:64
		Gmod{1,i}(j-32,:)=filtG{i}(j,:);
	end
	for j=65:96
		Gmod{2,i}(j-64,:)=filtG{i}(j,:);
	end
	for j=97:128
		Gmod{3,i}(j-96,:)=filtG{i}(j,:);
	end
	for j=129:160
		Gmod{4,i}(j-128,:)=filtG{i}(j,:);
	end
	for j=161:192
		Gmod{5,i}(j-160,:)=filtG{i}(j,:);
	end
	for j=193:224
		Gmod{6,i}(j-192,:)=filtG{i}(j,:);
	end
	for j=225:256
		Gmod{7,i}(j-224,:)=filtG{i}(j,:);
	end
	for j=257:288
		Gmod{8,i}(j-256,:)=filtG{i}(j,:);
	end
end
for i=1:8
	for j=1:24
		modG{24*(i-1)+j}=Gmod{i,j};
	end
end
filtG=modG;
clear Gmod modG


%H
for i=1:24
	for j=6:9
		filtH{i}(:,j-5)=filter(bp1,H{i}(:,j));
	end
	for j=33:64
		Hmod{1,i}(j-32,:)=filtH{i}(j,:);
	end
	for j=65:96
		Hmod{2,i}(j-64,:)=filtH{i}(j,:);
	end
	for j=97:128
		Hmod{3,i}(j-96,:)=filtH{i}(j,:);
	end
	for j=129:160
		Hmod{4,i}(j-128,:)=filtH{i}(j,:);
	end
	for j=161:192
		Hmod{5,i}(j-160,:)=filtH{i}(j,:);
	end
	for j=193:224
		Hmod{6,i}(j-192,:)=filtH{i}(j,:);
	end
	for j=225:256
		Hmod{7,i}(j-224,:)=filtH{i}(j,:);
	end
	for j=257:288
		Hmod{8,i}(j-256,:)=filtH{i}(j,:);
	end
end
for i=1:8
	for j=1:24
		modH{24*(i-1)+j}=Hmod{i,j};
	end
end
filtH=modH;
clear Hmod modH


%I
for i=1:24
	for j=6:9
		filtI{i}(:,j-5)=filter(bp1,I{i}(:,j));
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
	for j=1:24
		modI{24*(i-1)+j}=Imod{i,j};
	end
end
filtI=modI;
clear Imod modI


%J
for i=1:24
	for j=6:9
		filtJ{i}(:,j-5)=filter(bp1,J{i}(:,j));
	end
	for j=33:64
		Jmod{1,i}(j-32,:)=filtJ{i}(j,:);
	end
	for j=65:96
		Jmod{2,i}(j-64,:)=filtJ{i}(j,:);
	end
	for j=97:128
		Jmod{3,i}(j-96,:)=filtJ{i}(j,:);
	end
	for j=129:160
		Jmod{4,i}(j-128,:)=filtJ{i}(j,:);
	end
	for j=161:192
		Jmod{5,i}(j-160,:)=filtJ{i}(j,:);
	end
	for j=193:224
		Jmod{6,i}(j-192,:)=filtJ{i}(j,:);
	end
	for j=225:256
		Jmod{7,i}(j-224,:)=filtJ{i}(j,:);
	end
	for j=257:288
		Jmod{8,i}(j-256,:)=filtJ{i}(j,:);
	end
end
for i=1:8
	for j=1:24
		modJ{24*(i-1)+j}=Jmod{i,j};
	end
end
filtJ=modJ;
clear Jmod modJ


%K
for i=1:24
	for j=6:9
		filtK{i}(:,j-5)=filter(bp1,K{i}(:,j));
	end
	for j=33:64
		Kmod{1,i}(j-32,:)=filtK{i}(j,:);
	end
	for j=65:96
		Kmod{2,i}(j-64,:)=filtK{i}(j,:);
	end
	for j=97:128
		Kmod{3,i}(j-96,:)=filtK{i}(j,:);
	end
	for j=129:160
		Kmod{4,i}(j-128,:)=filtK{i}(j,:);
	end
	for j=161:192
		Kmod{5,i}(j-160,:)=filtK{i}(j,:);
	end
	for j=193:224
		Kmod{6,i}(j-192,:)=filtK{i}(j,:);
	end
	for j=225:256
		Kmod{7,i}(j-224,:)=filtK{i}(j,:);
	end
	for j=257:288
		Kmod{8,i}(j-256,:)=filtK{i}(j,:);
	end
end
for i=1:8
	for j=1:24
		modK{24*(i-1)+j}=Kmod{i,j};
	end
end
filtK=modK;
clear Kmod modK


%L
for i=1:24
	for j=6:9
		filtL{i}(:,j-5)=filter(bp1,L{i}(:,j));
	end
	for j=33:64
		Lmod{1,i}(j-32,:)=filtL{i}(j,:);
	end
	for j=65:96
		Lmod{2,i}(j-64,:)=filtL{i}(j,:);
	end
	for j=97:128
		Lmod{3,i}(j-96,:)=filtL{i}(j,:);
	end
	for j=129:160
		Lmod{4,i}(j-128,:)=filtL{i}(j,:);
	end
	for j=161:192
		Lmod{5,i}(j-160,:)=filtL{i}(j,:);
	end
	for j=193:224
		Lmod{6,i}(j-192,:)=filtL{i}(j,:);
	end
	for j=225:256
		Lmod{7,i}(j-224,:)=filtL{i}(j,:);
	end
	for j=257:288
		Lmod{8,i}(j-256,:)=filtL{i}(j,:);
	end
end
for i=1:8
	for j=1:24
		modL{24*(i-1)+j}=Lmod{i,j};
	end
end
filtL=modL;
clear Lmod modL


%M
for i=1:24
	for j=6:9
		filtM{i}(:,j-5)=filter(bp1,M{i}(:,j));
	end
	for j=33:64
		Mmod{1,i}(j-32,:)=filtM{i}(j,:);
	end
	for j=65:96
		Mmod{2,i}(j-64,:)=filtM{i}(j,:);
	end
	for j=97:128
		Mmod{3,i}(j-96,:)=filtM{i}(j,:);
	end
	for j=129:160
		Mmod{4,i}(j-128,:)=filtM{i}(j,:);
	end
	for j=161:192
		Mmod{5,i}(j-160,:)=filtM{i}(j,:);
	end
	for j=193:224
		Mmod{6,i}(j-192,:)=filtM{i}(j,:);
	end
	for j=225:256
		Mmod{7,i}(j-224,:)=filtM{i}(j,:);
	end
	for j=257:288
		Mmod{8,i}(j-256,:)=filtM{i}(j,:);
	end
end
for i=1:8
	for j=1:24
		modM{24*(i-1)+j}=Mmod{i,j};
	end
end
filtM=modM;
clear Mmod modM

%N
for i=1:24
	for j=6:9
		filtN{i}(:,j-5)=filter(bp1,N{i}(:,j));
	end
	for j=33:64
		Nmod{1,i}(j-32,:)=filtN{i}(j,:);
	end
	for j=65:96
		Nmod{2,i}(j-64,:)=filtN{i}(j,:);
	end
	for j=97:128
		Nmod{3,i}(j-96,:)=filtN{i}(j,:);
	end
	for j=129:160
		Nmod{4,i}(j-128,:)=filtN{i}(j,:);
	end
	for j=161:192
		Nmod{5,i}(j-160,:)=filtN{i}(j,:);
	end
	for j=193:224
		Nmod{6,i}(j-192,:)=filtN{i}(j,:);
	end
	for j=225:256
		Nmod{7,i}(j-224,:)=filtN{i}(j,:);
	end
	for j=257:288
		Nmod{8,i}(j-256,:)=filtN{i}(j,:);
	end
end
for i=1:8
	for j=1:24
		modN{24*(i-1)+j}=Nmod{i,j};
	end
end
filtN=modN;
clear Nmod modN


%O
for i=1:24
	for j=6:9
		filtO{i}(:,j-5)=filter(bp1,O{i}(:,j));
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
	for j=1:24
		modO{24*(i-1)+j}=Omod{i,j};
	end
end
filtO=modO;
clear Omod modO

%P
for i=1:24
	for j=6:9
		filtP{i}(:,j-5)=filter(bp1,P{i}(:,j));
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
	for j=1:24
		modP{24*(i-1)+j}=Pmod{i,j};
	end
end
filtP=modP;
clear Pmod modP


%Q
for i=1:24
	for j=6:9
		filtQ{i}(:,j-5)=filter(bp1,Q{i}(:,j));
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
	for j=1:24
		modQ{24*(i-1)+j}=Qmod{i,j};
	end
end
filtQ=modQ;
clear Qmod modQ


%R
for i=1:24
	for j=6:9
		filtR{i}(:,j-5)=filter(bp1,R{i}(:,j));
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
	for j=1:24
		modR{24*(i-1)+j}=Rmod{i,j};
	end
end
filtR=modR;
clear Rmod modR


%S
for i=1:24
	for j=6:9
		filtS{i}(:,j-5)=filter(bp1,S{i}(:,j));
	end
	for j=33:64
		Smod{1,i}(j-32,:)=filtS{i}(j,:);
	end
	for j=65:96
		Smod{2,i}(j-64,:)=filtS{i}(j,:);
	end
	for j=97:128
		Smod{3,i}(j-96,:)=filtS{i}(j,:);
	end
	for j=129:160
		Smod{4,i}(j-128,:)=filtS{i}(j,:);
	end
	for j=161:192
		Smod{5,i}(j-160,:)=filtS{i}(j,:);
	end
	for j=193:224
		Smod{6,i}(j-192,:)=filtS{i}(j,:);
	end
	for j=225:256
		Smod{7,i}(j-224,:)=filtS{i}(j,:);
	end
	for j=257:288
		Smod{8,i}(j-256,:)=filtS{i}(j,:);
	end
end
for i=1:8
	for j=1:24
		modS{24*(i-1)+j}=Smod{i,j};
	end
end
filtS=modS;
clear Smod modS


%T
for i=1:24
	for j=6:9
		filtT{i}(:,j-5)=filter(bp1,T{i}(:,j));
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
	for j=1:24
		modT{24*(i-1)+j}=Tmod{i,j};
	end
end
filtT=modT;
clear Tmod modT


%U
for i=1:24
	for j=6:9
		filtU{i}(:,j-5)=filter(bp1,U{i}(:,j));
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
	for j=1:24
		modU{24*(i-1)+j}=Umod{i,j};
	end
end
filtU=modU;
clear Umod modU


%V
for i=1:24
	for j=6:9
		filtV{i}(:,j-5)=filter(bp1,V{i}(:,j));
	end
	for j=33:64
		Vmod{1,i}(j-32,:)=filtV{i}(j,:);
	end
	for j=65:96
		Vmod{2,i}(j-64,:)=filtV{i}(j,:);
	end
	for j=97:128
		Vmod{3,i}(j-96,:)=filtV{i}(j,:);
	end
	for j=129:160
		Vmod{4,i}(j-128,:)=filtV{i}(j,:);
	end
	for j=161:192
		Vmod{5,i}(j-160,:)=filtV{i}(j,:);
	end
	for j=193:224
		Vmod{6,i}(j-192,:)=filtV{i}(j,:);
	end
	for j=225:256
		Vmod{7,i}(j-224,:)=filtV{i}(j,:);
	end
	for j=257:288
		Vmod{8,i}(j-256,:)=filtV{i}(j,:);
	end
end
for i=1:8
	for j=1:24
		modV{24*(i-1)+j}=Vmod{i,j};
	end
end
filtV=modV;
clear Vmod modV


%W
for i=1:24
	for j=6:9
		filtW{i}(:,j-5)=filter(bp1,W{i}(:,j));
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
	for j=1:24
		modW{24*(i-1)+j}=Wmod{i,j};
	end
end
filtW=modW;
clear Wmod modW


%X
for i=1:24
	for j=6:9
		filtX{i}(:,j-5)=filter(bp1,X{i}(:,j));
	end
	for j=33:64
		Xmod{1,i}(j-32,:)=filtX{i}(j,:);
	end
	for j=65:96
		Xmod{2,i}(j-64,:)=filtX{i}(j,:);
	end
	for j=97:128
		Xmod{3,i}(j-96,:)=filtX{i}(j,:);
	end
	for j=129:160
		Xmod{4,i}(j-128,:)=filtX{i}(j,:);
	end
	for j=161:192
		Xmod{5,i}(j-160,:)=filtX{i}(j,:);
	end
	for j=193:224
		Xmod{6,i}(j-192,:)=filtX{i}(j,:);
	end
	for j=225:256
		Xmod{7,i}(j-224,:)=filtX{i}(j,:);
	end
	for j=257:288
		Xmod{8,i}(j-256,:)=filtX{i}(j,:);
	end
end
for i=1:8
	for j=1:24
		modX{24*(i-1)+j}=Xmod{i,j};
	end
end
filtX=modX;
clear Xmod modX


%Y
for i=1:24
	for j=6:9
		filtY{i}(:,j-5)=filter(bp1,Y{i}(:,j));
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
	for j=1:24
		modY{24*(i-1)+j}=Ymod{i,j};
	end
end
filtY=modY;
clear Ymod modY


%Z
for i=1:24
	for j=6:9
		filtZ{i}(:,j-5)=filter(bp1,Z{i}(:,j));
	end
	for j=33:64
		Zmod{1,i}(j-32,:)=filtZ{i}(j,:);
	end
	for j=65:96
		Zmod{2,i}(j-64,:)=filtZ{i}(j,:);
	end
	for j=97:128
		Zmod{3,i}(j-96,:)=filtZ{i}(j,:);
	end
	for j=129:160
		Zmod{4,i}(j-128,:)=filtZ{i}(j,:);
	end
	for j=161:192
		Zmod{5,i}(j-160,:)=filtZ{i}(j,:);
	end
	for j=193:224
		Zmod{6,i}(j-192,:)=filtZ{i}(j,:);
	end
	for j=225:256
		Zmod{7,i}(j-224,:)=filtZ{i}(j,:);
	end
	for j=257:288
		Zmod{8,i}(j-256,:)=filtZ{i}(j,:);
	end
end
for i=1:8
	for j=1:24
		modZ{24*(i-1)+j}=Zmod{i,j};
	end
end
filtZ=modZ;
clear Zmod modZ
		
clear i j 