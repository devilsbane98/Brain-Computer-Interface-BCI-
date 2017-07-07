%parpool;
t=tic;
 parfor i=1:26
    zero{i}=load(['zero_' int2str(i) '.csv']);

 
    one{i}=load(['one_' int2str(i) '.csv']);


 
    two{i}=load(['two_' int2str(i) '.csv']);


 
    three{i}=load(['three_' int2str(i) '.csv']);


 
    four{i}=load(['four_' int2str(i) '.csv']);


 
    five{i}=load(['five_' int2str(i) '.csv']);



 
    six{i}=load(['six_' int2str(i) '.csv']);


 
    seven{i}=load(['seven_' int2str(i) '.csv']);


 
    eight{i}=load(['eight_' int2str(i) '.csv']);


 
    nine{i}=load(['nine_' int2str(i) '.csv']);


 
    back{i}=load(['Bsp_' int2str(i) '.csv']);


 end
toc(t)

clear i j