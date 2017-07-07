file='Book1.xlsx';
on2=featuresig(filtone,'one');
tw2=featuresig(filttwo,'two');
th2=featuresig(filtthree,'three');
fo2=featuresig(filtfour,'four');
fi2=featuresig(filtfive,'five');
si2=featuresig(filtsix,'six');
se2=featuresig(filtseven,'seven');
ei2=featuresig(filteight,'eight');
ni2=featuresig(filtnine,'nine');
ze2=featuresig(filtzero,'zero');


back2=featuresig(filtback,'back');

x=[on2;fo2;se2;ze2;back2;th2;si2;ni2;tw2;fi2;ei2];
%xlswrite(file,x);