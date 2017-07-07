function feat=testfeat(sig,label)
t=(0:length(sig{1}(:,1))-1)/128;
    [~,x]=size(sig);
    for i=1:x
	for j=1:14
           
%calculation of central frequency
%	     	D = abs(fft(sig{i}(:,j)));                  % take FFT of each channel
%  		D(1,:) = 0;                             % set DC component to 0
%      		D = bsxfun(@rdivide,D,sum(D)); 
% 		sfreq = 64;
%     		tfreq = 30;
%     		ppow = 0.5;
%  		[nt,~] = size(sig);   
%     		topfreq = round(nt/sfreq*tfreq)+1;
%     		A = cumsum(D(1:topfreq,:));
%
%     		B = bsxfun(@minus,A,max(A)*ppow);
%     		[~,spedge] = min(abs(B));
%     		spedge = (spedge-1)/(topfreq-1)*tfreq;
%		feat{i,j}=spedge;
		%% Hjorth parameters
    % Activity
               activity = var(sig{i}(:,j));
    
    % Mobility
               mobility = std(diff(sig{i}(:,j)))./std(sig{i}(:,j));
    		feat{i,j}=mobility;

    % Complexity
               complexity = std(diff(diff(sig{i}(:,j))))./std(diff(sig{i}(:,j)))./mobility;
		%feat{i,j}=complexity;
	end
    end
     	for i=1:x
        feat{i,15}=label;
    end
    %feat=cell2table(feat);
end    

    