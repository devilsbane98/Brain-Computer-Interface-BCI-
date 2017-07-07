function fff=pmusic_1(data)
[p,f] = pmusic(data,4); % Window length = 7

[pk,ff] = max(p(20:length(p)-1));
fff=f(ff+19);
end