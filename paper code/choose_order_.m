function [order,hankel_svd,k1] = choose_order_(dimension,impulse_coefficient)
%dimension表示要构成的hankel矩阵维度，impulse_coefficient表示要使用的数据
%要满足impulse_coefficient>=2*dimension
for i = 1 : dimension
for j = 1 :dimension
hankel(i,j)= impulse_coefficient(i-1+j+1);
end
end
hankel_svd_Original = svd(hankel);
hankel_svd_Ori=hankel_svd_Original';
hankel_svd = mapminmax(hankel_svd_Ori,0,1);%奇异值归一化
% figure;
% plot(hankel_svd,'-o');
for l = 1 : dimension-6
k(l)=(hankel_svd(l)-hankel_svd(l+1))/hankel_svd(l+1);
end
for l = dimension-5 : dimension-2
k(l)=(hankel_svd(l)-hankel_svd(l+1));
end
% % % for l = 1 : dimension-1
% % % k(l)=-(hankel_svd(l+1)-hankel_svd(l))/(l+1-l);
% % % end
k1=guiyi(k);
% figure;
% plot(k1);
for l = 1 : dimension-2
if k1(l)==max(k1)
order=l;
end
end
end