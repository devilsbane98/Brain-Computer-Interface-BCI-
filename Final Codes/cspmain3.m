function [out1,out2,colo]= cspmain3(data1, data2,label1,label2)
R1=0;R2=0;
% [~,x]=size(data1);
% [~,y]=size(data2);
%out1=zeros(200,4);out2=zeros(200,4);

for i=1:72
	R11 = ((data1{i})*((data1{i})'));
	%disp(size(R11));
	R1 = (R1+R11)/trace(R11);

	R22 = ((data2{i})*((data2{i})'));
	R2 = R2+R22/trace(R22);
end

R1=R1/72;
R2=R2/72;

Rsum = R1+R2;

[EVecsum,EValsum] = eig(Rsum);	
[EValsum,ind] = sort(diag(EValsum),'descend');

EVecsum = EVecsum(:,ind);


W = sqrt(pinv(diag(EValsum))) * EVecsum';


S1 = W * R1 * W';
S2 = W * R2 * W';

[B,D] = eig(S1,S2);


[~,ind]=sort(diag(D));
B=B(:,ind);

colo = B'*W;
for i=1:72
    out1mod(i,:)=log(var(colo*data1{i}));
    out2mod(i,:)=log(var(colo*data2{i}));
end

out1=num2cell(out1mod);
out2=num2cell(out2mod);

for i=1:72
    out1{i,5}=label1;
    out2{i,5}=label2;
end

end