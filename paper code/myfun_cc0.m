function y = myfun_cc0(x,t1,t2)
cc1=-3.646;
cc2=0.5*cc1;
cc3=-4.79;
cc4=0.5*cc3;
cc5=-20.5127;
cc6=0.5*cc5;
cc7=-20.5096;
K=1/(t2/pi);%K为衔接段函数的缩放比例,无需修改
cos_x1=((cc1-cc2)/2)*cos(K*(x-29*t1))+cc1+(cc2-cc1)/2;
cos_x2=((cc2-cc3)/2)*cos(K*(x-39*t1))+cc2+(cc3-cc2)/2;
cos_x3=((cc3-cc4)/2)*cos(K*(x-79*t1))+cc3+(cc4-cc3)/2;
cos_x4=((cc4-cc5)/2)*cos(K*(x-89*t1))+cc4+(cc5-cc4)/2;
cos_x5=((cc5-cc6)/2)*cos(K*(x-129*t1))+cc5+(cc6-cc5)/2;
cos_x6=((cc6-cc7)/2)*cos(K*(x-139*t1))+cc6+(cc7-cc6)/2;
% y=(a1).*(x>=0 & x<t1)+cos_x1.*(x>=t1 & x<t1+t2)+(a2).*(x>=t1+t2 & x<2*t1+t2)+cos_x2.*(x>=2*t1+t2 & x<2*t1+2*t2)+(a3).*(x>=2*t1+2*t2 & x<3*t1+2*t2);
y=(cc1).*(x>=0 & x<29*t1)+cos_x1.*(x>=29*t1 & x<30*t1)+(cc2).*(x>=30*t1 & x<39*t1)+cos_x2.*(x>=39*t1 & x<40*t1)+(cc3).*(x>=40*t1 & x<80*t1)+cos_x3.*(x>=80*t1 & x<81*t1)+(cc4).*(x>=81*t1 & x<90*t1)+cos_x4.*(x>=90*t1 & x<91*t1)+(cc5).*(x>=91*t1 & x<131*t1)+cos_x5.*(x>=131*t1 & x<132*t1)+(cc6).*(x>=132*t1 & x<141*t1)+cos_x6.*(x>=141*t1 & x<142*t1)+(cc7).*(x>=142*t1 & x<172*t1);
end

