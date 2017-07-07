function [dat1 dat2]= cspmain(data1, data2)
R1=zeroes(1,200);
R2=zeroes(1,200);
for i=1:200
    for j=1:32
        
  R11(i) = ([data1(i)(:,j) data1(i)(:,j+200)])*([data1(i)(:,j) data1(i((:,j+200)])';
  R1(i) = R1(i)+R11(i)/trace(R11(i));
  R22(i) = ([data2(i)(:,j) data2(i)(:,j+200)])*([data2(i)(:,j) data2(i)(:,j+200)])';
  R2{i) = R2(i)+R22(i)/trace(R22(i));
end
R1=R1/200;
R2=R2/200;
Rsum = R1+R2;


[EVecsum,EValsum] = eig(Rsum);
[EValsum,ind] = sort(diag(EValsum),'descend');
EVecsum = EVecsum(:,ind);


W = sqrt(pinv(diag(EValsum))) * EVecsum';


S1 = W * R1 * W';
S2 = W * R2 * W';

[B,D] = eig(S1,S2);


[D,ind]=sort(diag(D));
B=B(:,ind);

colo = B'*W;
dat1=log(var(colo*data1));
dat2=log(var(colo*data2));
dat1=dat1';
dat2=dat2';
dat1=[dat1(1:200) dat1(201:400)];
dat2=[dat2(1:200) dat2(201:400)];
end

