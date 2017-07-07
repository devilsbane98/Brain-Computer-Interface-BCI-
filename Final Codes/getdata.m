%parpool;
t=tic;

% for createing reference
% ref=load('ref.csv');
% tf=getfilter5;
% ref=filter(tf,ref);
% ref=ref(30:93);

 for i=1:24
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


 
    Q{i}=load(['Q_' int2str(i) '.csv']);


 
    W{i}=load(['W_' int2str(i) '.csv']);


 
    E{i}=load(['E_' int2str(i) '.csv']);


 
    R{i}=load(['R_' int2str(i) '.csv']);

 
    T{i}=load(['T_' int2str(i) '.csv']);



 
    Y{i}=load(['Y_' int2str(i) '.csv']);


 
    U{i}=load(['U_' int2str(i) '.csv']);


 
    I{i}=load(['I_' int2str(i) '.csv']);


 
    O{i}=load(['O_' int2str(i) '.csv']);


 
    P{i}=load(['P_' int2str(i) '.csv']);


 
    A{i}=load(['A_' int2str(i) '.csv']);


 
    S{i}=load(['S_' int2str(i) '.csv']);



 
    D{i}=load(['D_' int2str(i) '.csv']);


 
    F{i}=load(['F_' int2str(i) '.csv']);


 
    G{i}=load(['G_' int2str(i) '.csv']);


 
    H{i}=load(['H_' int2str(i) '.csv']);


 
    J{i}=load(['J_' int2str(i) '.csv']);


 
    K{i}=load(['K_' int2str(i) '.csv']);


 
    L{i}=load(['L_' int2str(i) '.csv']);

 
    Z{i}=load(['Z_' int2str(i) '.csv']);


 
    X{i}=load(['X_' int2str(i) '.csv']);



 
    C{i}=load(['C_' int2str(i) '.csv']);


 
    V{i}=load(['V_' int2str(i) '.csv']);


 
    B{i}=load(['B_' int2str(i) '.csv']);


 
    N{i}=load(['N_' int2str(i) '.csv']);


 
    M{i}=load(['M_' int2str(i) '.csv']);


 
    space{i}=load(['Space_' int2str(i) '.csv']);


 
    back{i}=load(['Bsp_' int2str(i) '.csv']);


 
    comma{i}=load(['Comma_' int2str(i) '.csv']);


 
    dot{i}=load(['Dot_' int2str(i) '.csv']);


 end
toc(t)

clear i j