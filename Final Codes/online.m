clear
clc
y='WELCOME';
z=0; 
load('class.mat');

while(z<20)

    
    sys=system('C:\Python27\python.exe "C:\Users\HP\Dropbox\BCI Summer 17\do not touch\testepoc.PY"');
    x=load('data.csv');
    
    for i=1:14
       filtx(:,i)=filter(bp1,x(:,i));
    end

    for i=21:52
        modx(i-20,:)=filtx(i,:);
    end

    %feature extraction
    feat=getfeatx(modx);

    %color based classification
    s=predict(color,feat);

    %individual prediction
    %cblue,cgreen,cwhite are classifiers corresponding to alphabets in each color

    if(strcmp(s,"blue"))
        letter=predict(cblue,feat);
    end
    else if (strcmp(s,"green"))
        letter=predict(cgreen,feat);
    end
    else if (strcmp(s,"white"))
        letter=predict(cwhite,feat);
    end

    
    %y=[y letter];
    %displaypy(y);
    if (strcmp(y,"back")
        backpy();
    else
        displaypy(send_data(y));20


    clear s feat filtx x modx;
    z=z+1;
end