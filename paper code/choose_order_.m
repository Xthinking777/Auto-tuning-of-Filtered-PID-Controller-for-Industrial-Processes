function [order,hankel_svd,k1] = choose_order_(dimension,impulse_coefficient)
for i = 1 : dimension
for j = 1 :dimension
hankel(i,j)= impulse_coefficient(i-1+j+1);
end
end
hankel_svd_Original = svd(hankel);
hankel_svd_Ori=hankel_svd_Original';
hankel_svd = mapminmax(hankel_svd_Ori,0,1);

for l = 1 : dimension-6
k(l)=(hankel_svd(l)-hankel_svd(l+1))/hankel_svd(l+1);
end
for l = dimension-5 : dimension-2
k(l)=(hankel_svd(l)-hankel_svd(l+1));
end

k1=guiyi(k);
% figure;
% plot(k1);
for l = 1 : dimension-2
if k1(l)==max(k1)
order=l;
end
end
end