function feat=feat2(sig,ref,label1,label2)
  %[~,x]=size(sig);
  
  for i=1:96
      
          [out1,~,~]= cspmain2(sig{i},ref,label1,label2);
          if i==1
            feat=out1;
          else
              feat=[feat;out1];
          end
  end
end