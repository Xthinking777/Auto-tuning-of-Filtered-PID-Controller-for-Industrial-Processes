t1=4000;
t2=4000;
Ts=8;
t = (0:0.1:172*t1)';
u = [myfun_bb0(t,t1,t2),(t>=0)-2,myfun_cc0(t,t1,t2),(t>=0)-1,myfun_dd0(t,t1,t2),myfun_ee0(t,t1,t2),myfun_ff0(t,t1,t2),(t>=0)-1,myfun_gg0(t,t1,t2)];
sim('newzn');
y5=ans.y5;