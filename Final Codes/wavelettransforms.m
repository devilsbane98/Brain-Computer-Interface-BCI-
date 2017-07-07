function feat=wavelettransforms(sig)
   % t=(0:length(sig{1}(:,1))-1)/128;
    %for i=1:x
       for j=1:14
        feat((24*j-23):24*j)=getmswtfeat(sig(:,j),32,32,64);
       end
    %end
end