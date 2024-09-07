% clear;clc;
% seed=1;
t1=4000;%t1是时不变时间
t2=4000;%t2是衔接时间
Ts=8;
t = (0:0.1:172*t1)';
% u = [myfun_bb0(t,t1,t2),myfun_cc0(t,t1,t2),myfun_dd0(t,t1,t2),(t>=0)-2,(t>=0)-1,myfun_ee0(t,t1,t2),myfun_ff0(t,t1,t2),(t>=0)-1,myfun_gg0(t,t1,t2)];
% u = [myfun_bb0(t,t1,t2),(t>=0)-2,myfun_cc0(t,t1,t2),(t>=0)-1,myfun_dd0(t,t1,t2),myfun_ee0(t,t1,t2),myfun_ff0(t,t1,t2),(t>=0)-1,myfun_gg0(t,t1,t2)];
u = [myfun_bbb0(t,t1,t2),myfun_ccc0(t,t1,t2),myfun_ddd0(t,t1,t2),myfun_eee0(t,t1,t2),myfun_fff0(t,t1,t2),myfun_ee0(t,t1,t2),myfun_ff0(t,t1,t2),(t>=0)-1,myfun_gg0(t,t1,t2)];
sim('newfour');%如若修改t1和t2,需在simulink中将仿真时长改为对应的3*t1+2*t2时间
y6=ans.y6;