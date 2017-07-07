function feat=featuresig(sig,label1)
    t=(0:length(sig{1}(:,1))-1)/128;
    [~,x]=size(sig);
    for i=1:x
        for j=1:14
            feat{i,j}=trapz(t,abs(sig{i}(:,j)));%integral
        end
            clear l;
        for j=15:28
            feat{i,j}=mean(abs(sig{i}(:,j-14)));%mean
        end
        for j=29:42
            feat{i,j}=rms(sig{i}(:,j-28));%rms
        end
        for j=43:56
            feat{i,j}=var(sig{i}(:,j-42));%variance
        end
        for j=57:70
            feat{i,j}=trapz(t,(abs(sig{i}(:,j-56)).^2));%square integral
        end
        for j=71:84
            feat{i,j}=sum(diff(sign(diff(sig{i}(:,j-70))))~=0);
        end
        for j=85:98
            feat{i,j}=meanfreq(sig{i}(:,j-84),128);%mean frequency
        end
        for j=99:112
            feat{i,j}=medfreq(sig{i}(:,j-98),128);%median frequency
        end
        temp=getarfeat(sig{i},6);
        for j=113:196
            feat{i,j}=temp(j-112);
        end
        for j=197:210
            feat{i,j}=getwlfeat(sig{i}(:,j-196));%waveform length
        end
        for j=211:224
            F = fft(sig{i}(:,j-210));
            pow = F.*conj(F);
            feat{i,j} = sum(pow);
        end
        clear temp
        temp=ICA(sig{i});
        
        for j=225:308
            feat{i,j}=temp(j-224);
        end
        clear temp
          for j=309:322 
        [p,f]=psd(sig{i}(:,j-308));% power mean frequency
        feat{i,j}=trapz(f,f.*p)/trapz(f,p);
          end
	  for j=323:336
	feat{i,j} = bandpower(sig{i}(:,j-322));   %bandpower
	  end
          for j=337:350
		feat{i,j} = std(diff(sig{i}(:,j-336)))./std(sig{i}(:,j-336)); %mobility hjorth parameter
	  end
	  for j=351:364
		mobility = std(diff(sig{i}(:,j-350)))./std(sig{i}(:,j-350));
		feat{i,j} = std(diff(diff(sig{i}(:,j-350))))./std(diff(sig{i}(:,j-350)))./mobility;
	  end
%         for j=211:224
%             feat{i,j}=peak2rms(sig{i}(:,j-210));
%         end
%         temp=wavelettransforms(sig{i});
%         for j=1:336
%             feat{i,j}=temp(j);
	 

%          for j=337:350
%              l = abs(fft(sig{i}));
% 	         l(1) = [];
%              Lmax = max(l);
%              l(ceil(end/2):end) = [];
%              abovecutoff = l > Lmax / 2;   %3 dB is factor of 2
%              lowbin  = find(abovecutoff, 1, 'first');
%              highbin = sum(abovecutoff);
%              centbin = sqrt(lowbin * highbin);   %geometric mean 
% 	         feat{i,j}=var(floor(centbin)); 
%	     x=sig{i};
%	     xdft = floor(centbin);
%	     xdft = xdft(1:length(x)/2+1); % only retaining the positive frequencies
 %  	     freq = 0:64/length(x):500; % frequency vector from 0 to the Nyquist
%	     [~,maxindex] = max(abs(xdft));
%	     fprintf('The maximum occurs at %2.1f Hz\n', freq(maxindex));
%	     feat{i,j}=var(freq(maxindex));
%Calculation of frequency from fft bin
%	      hper = spectrum.periodogram;
%	      psdest = psd(hper,sig,64,64,128,length(centbin));
%	      [~,maxindex] = max(abs(psdest.Data));
%fprintf('The maximum occurs at %2.1f Hz\n', psdest.Frequencies(maxindex));
%	      feat{i,j}=var(psdest.Frequencies(maxindex));
	     
%calculation of sppectral edge frequency
 	      for j=367:380
 		Yaq = abs(fft(sig{i}(:,j-336)));                  % take FFT of each channel
   		Yaq(1,:) = 0;                             % set DC component to 0
      		Yaq = bsxfun(@rdivide,Yaq,sum(Yaq)); 
 		sfreq = 64;
     		tfreq = 30;
     		ppow = 0.5;
  		[nt,~] = size(sig{i});   
     		topfreq = round(nt/sfreq*tfreq)+1;
     		temp1 = cumsum(Yaq(1:topfreq,:));
     		temp2 = bsxfun(@minus,temp1,max(temp1)*ppow);
     		spedge = min(abs(temp2));
     		feat{i,j} = abs((spedge-1)/(topfreq-1)*tfreq);
 		
 		
 	      end	        
         
     end
          
    for i=1:x
        feat{i,381}=label1;
    end
    %feat=cell2table(feat);
end