
y='WELCOME';
z=0;
load('class.mat');
while(z<10)

    
    s=system('C:\Python27\python.exe "C:\Users\HP\Desktop\summer 17\BCI\pyemotiv-master\pyemotiv-master\testepoc.PY"');
    x=load('data.csv');
    
    for i=1:14
       filtx(:,i)=filter(bp1,x(:,i));
    end
feat=getfeatx(filtx);
s=char(predict(colourclass,feat));
if s=='blue'
    c=char(predict(bluesub,feat));

y=[y c];

displaypy(y);
z=z+1;
end