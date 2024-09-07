function y = myfun_bbb0(x,t1,t2)
bbb1=2.221;
bbb2=10.5395;
bbb3=8.2112;
bbb4=16.6197;
bbb1=2.221;
bbb2=10.2722;
bbb3=9.5362;
bbb4=14.7449;
bbb1=2.221;
bbb2=9.7531;
bbb3=8.0479;
bbb4=14.8169;
bbb1=2.221;
bbb2=7.4145;
bbb3=9.5208;
bbb4=13.5310;
bbb1=2.221;
bbb2=7.4145;
bbb3=8.8544;
bbb4=13.1747;

K=1/(t2/pi);%K为衔接段函数的缩放比例,无需修改
cos_x1=((bbb1-bbb2)/2)*cos(K*(x-40*t1))+bbb1+(bbb2-bbb1)/2;
cos_x2=((bbb2-bbb3)/2)*cos(K*(x-91*t1))+bbb2+(bbb3-bbb2)/2;
cos_x3=((bbb3-bbb4)/2)*cos(K*(x-142*t1))+bbb3+(bbb4-bbb3)/2;
% y=(a1).*(x>=0 & x<t1)+cos_x1.*(x>=t1 & x<t1+t2)+(a2).*(x>=t1+t2 & x<2*t1+t2)+cos_x2.*(x>=2*t1+t2 & x<2*t1+2*t2)+(a3).*(x>=2*t1+2*t2 & x<3*t1+2*t2);
y=(bbb1).*(x>=0 & x<40*t1)+cos_x1.*(x>=40*t1 & x<41*t1)+(bbb2).*(x>=41*t1 & x<91*t1)+cos_x2.*(x>=91*t1 & x<92*t1)+(bbb3).*(x>=92*t1 & x<142*t1)+cos_x3.*(x>=142*t1 & x<143*t1)+(bbb4).*(x>=143*t1 & x<172*t1);
end

