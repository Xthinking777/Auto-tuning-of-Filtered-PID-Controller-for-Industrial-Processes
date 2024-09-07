function k1=guiyi(k)
max_k=max(k);
min_k=min(k);
for i=1:length(k)
k1(i)=(k(i)-min_k)/(max_k-min_k);
end
end