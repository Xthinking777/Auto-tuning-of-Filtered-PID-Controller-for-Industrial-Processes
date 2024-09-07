function y = myfun_dd0(x,t1,t2)
dd1=1.475;
dd2=0.5*dd1;
dd3=2;
dd4=0.5*dd3;
dd5=9.9962;
dd6=0.5*dd5;
dd7=10.002;
K=1/(t2/pi);%K为衔接段函数的缩放比例,无需修改
cos_x1=((dd1-dd2)/2)*cos(K*(x-29*t1))+dd1+(dd2-dd1)/2;
cos_x2=((dd2-dd3)/2)*cos(K*(x-39*t1))+dd2+(dd3-dd2)/2;
cos_x3=((dd3-dd4)/2)*cos(K*(x-79*t1))+dd3+(dd4-dd3)/2;
cos_x4=((dd4-dd5)/2)*cos(K*(x-89*t1))+dd4+(dd5-dd4)/2;
cos_x5=((dd5-dd6)/2)*cos(K*(x-129*t1))+dd5+(dd6-dd5)/2;
cos_x6=((dd6-dd7)/2)*cos(K*(x-139*t1))+dd6+(dd7-dd6)/2;
% y=(a1).*(x>=0 & x<t1)+cos_x1.*(x>=t1 & x<t1+t2)+(a2).*(x>=t1+t2 & x<2*t1+t2)+cos_x2.*(x>=2*t1+t2 & x<2*t1+2*t2)+(a3).*(x>=2*t1+2*t2 & x<3*t1+2*t2);
y=(dd1).*(x>=0 & x<29*t1)+cos_x1.*(x>=29*t1 & x<30*t1)+(dd2).*(x>=30*t1 & x<39*t1)+cos_x2.*(x>=39*t1 & x<40*t1)+(dd3).*(x>=40*t1 & x<80*t1)+cos_x3.*(x>=80*t1 & x<81*t1)+(dd4).*(x>=81*t1 & x<90*t1)+cos_x4.*(x>=90*t1 & x<91*t1)+(dd5).*(x>=91*t1 & x<131*t1)+cos_x5.*(x>=131*t1 & x<132*t1)+(dd6).*(x>=132*t1 & x<141*t1)+cos_x6.*(x>=141*t1 & x<142*t1)+(dd7).*(x>=142*t1 & x<172*t1);
end

