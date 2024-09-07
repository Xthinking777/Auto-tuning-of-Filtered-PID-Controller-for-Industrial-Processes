function [impulse_coefficient] = FCORR(y_output,p_test,q_test,N,count)
%FCOR 此处显示有关此函数的摘要
%白化过程
%在实验的过程中可以调整p_test、q_test以使白化效果最好
% figure;
% plot(y_output);
% title('输出数据')
m1=armax(y_output,[p_test q_test]);%%%y_out为输出数据
[e,~]=resid(y_output,m1);%%%e为残差序列
%残差序列随机性检验
[h,~,~,~]=lbqtest(e.outputdata);
if(h==0)
    fprintf('残差序列是白噪声！\n');
else
    fprintf('残差序列不是白噪声！\n');
end
ee_noi=var(e.outputdata)%ee_noi为残差方差
N_0=sqrt(ee_noi);
e.outputdata=e.outputdata.*N_0;
% figure;
% autocorr(e.outputdata,50);
% title('残差自相关图')
%%FCOR
for r=0:500
    impulse_coefficient(r+1)=[y_output(r+1:end)'*e.outputdata(1:end-r)]/[(N+1-r)*ee_noi];%N为数据个数
end
% figure(count),plot(impulse_coefficient(1:50))
end