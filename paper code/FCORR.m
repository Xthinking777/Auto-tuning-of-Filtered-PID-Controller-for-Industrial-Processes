function [impulse_coefficient] = FCORR(y_output,p_test,q_test,N,count)
m1=armax(y_output,[p_test q_test]);
[e,~]=resid(y_output,m1);
[h,~,~,~]=lbqtest(e.outputdata);
if(h==0)
    fprintf('残差序列是白噪声！\n');
else
    fprintf('残差序列不是白噪声！\n');
end
ee_noi=var(e.outputdata)
N_0=sqrt(ee_noi);
e.outputdata=e.outputdata.*N_0;

for r=0:500
    impulse_coefficient(r+1)=[y_output(r+1:end)'*e.outputdata(1:end-r)]/[(N+1-r)*ee_noi];%N为数据个数
end

end