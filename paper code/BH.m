function [ wn ] =BH( y,j1,j2 )%系统闭环脉冲响应求解程序
m1=armax(y,[j1 j2]);%A(q) y(t) = C(q) e(t)，其中设A为10阶；B为9阶；m1为AB模型且包含其信息
e=resid(m1,y);%求序列y的残差
e_var=var(e.outputdata);%求残差方差
wn=e.outputdata*(1/sqrt(e_var));%归一化
end
