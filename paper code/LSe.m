function [transfer] = LSe(dimension,rank,impulse_data,G_cl)
%LSE 此处显示有关此函数的摘要
%   此处显示详细说明
hankel=[];
for i = 1 : rank
    for j = 1 :dimension
         hankel(i,j)= impulse_data(i-1+j+1);
    end
end
g1 = impulse_data(2+dimension:dimension+rank+1);
a_result = -inv((hankel')*hankel)*(hankel')*g1;
a_result(end+1) = 1;
if(dimension==1)
   a_result = fliplr(a_result);
else
   a_result = fliplr(a_result');
end
a2 = a_matrix(dimension+1,a_result);
g2 = impulse_data(1:dimension+1);
b_result = a2*g2;
b_result = b_result';
%剔除显著为0参数
% for e = 1 : dimension+1
%     if abs(a_result(e))<0.005
%         a_result(e)=0;
%     end
% end
% for r = 1 : dimension+1
%     if abs(b_result(r))<0.005
%         b_result(r)=0;
%     end
% end

%真实脉冲响应系数
real_data = impulse(G_cl,100);
%figure(count),plot(real_data,'-o')
%Lse估计所得脉冲响应系数
transfer = filt(b_result,a_result);
estimate_data = impulse(transfer,100);
%figure(count+2),plot(estimate_data,'-o')

%figure(count+3),zplane([0 0.47 -0.6],[1 0.7 0.24])
%figure(count+4),zplane(b_result,a_result)
end

