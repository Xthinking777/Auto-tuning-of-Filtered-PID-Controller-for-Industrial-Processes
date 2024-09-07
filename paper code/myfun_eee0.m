function y = myfun_eee0(x,t1,t2)
eee1=0;
eee2=-0.4;
eee3=-0.2;
eee4=-0.6;
eee1=0;
eee2=-0.5;
eee3=0;
eee4=-0.5;
eee1=0;
eee2=0;
eee3=-0.4;
eee4=-0.7;
eee1=0;
eee2=0;
eee3=-0.2;
eee4=-0.6;

K=1/(t2/pi);%K为衔接段函数的缩放比例,无需修改
cos_x1=((eee1-eee2)/2)*cos(K*(x-40*t1))+eee1+(eee2-eee1)/2;
cos_x2=((eee2-eee3)/2)*cos(K*(x-91*t1))+eee2+(eee3-eee2)/2;
cos_x3=((eee3-eee4)/2)*cos(K*(x-142*t1))+eee3+(eee4-eee3)/2;
% y=(a1).*(x>=0 & x<t1)+cos_x1.*(x>=t1 & x<t1+t2)+(a2).*(x>=t1+t2 & x<2*t1+t2)+cos_x2.*(x>=2*t1+t2 & x<2*t1+2*t2)+(a3).*(x>=2*t1+2*t2 & x<3*t1+2*t2);
y=(eee1).*(x>=0 & x<40*t1)+cos_x1.*(x>=40*t1 & x<41*t1)+(eee2).*(x>=41*t1 & x<91*t1)+cos_x2.*(x>=91*t1 & x<92*t1)+(eee3).*(x>=92*t1 & x<142*t1)+cos_x3.*(x>=142*t1 & x<143*t1)+(eee4).*(x>=143*t1 & x<172*t1);
y=(eee1).*(x>=0 & x<40*t1)+cos_x1.*(x>=40*t1 & x<41*t1)+(eee2).*(x>=41*t1 & x<91*t1)+cos_x2.*(x>=91*t1 & x<92*t1)+(eee3).*(x>=92*t1 & x<142*t1)+cos_x3.*(x>=142*t1 & x<143*t1)+(eee4).*(x>=143*t1 & x<172*t1);
end

