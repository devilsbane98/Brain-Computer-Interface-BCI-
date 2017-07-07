function z=ICA(filtered_data)

Zmixed=filtered_data;
d   = 3;                % # mixed observations
r   = 3;                % # independent/principal components

% % Perform Fast ICA
Zfica = fastICA(Zmixed,r);

% Perform max-kurtosis ICA
%Zkica = kICA(Zmixed,r);

% Perform PCA
Zpca = PCA(Zmixed,r);
z=[Zfica(1,:) Zfica(2,:) Zfica(3,:) Zpca(1,:) Zpca(2,:) Zpca(3,:)];
end