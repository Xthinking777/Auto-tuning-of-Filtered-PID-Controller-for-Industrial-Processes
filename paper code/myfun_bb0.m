function y = myfun_bb0(x,t1,t2)
bb1=2.221;
bb2=0.5*bb1;
bb3=2.84;
bb4=0.5*bb3;
bb5=10.6099;
bb6=0.5*bb5;
bb7=10.5394;
K=1/(t2/pi);
cos_x1=((bb1-bb2)/2)*cos(K*(x-29*t1))+bb1+(bb2-bb1)/2;
cos_x2=((bb2-bb3)/2)*cos(K*(x-39*t1))+bb2+(bb3-bb2)/2;
cos_x3=((bb3-bb4)/2)*cos(K*(x-79*t1))+bb3+(bb4-bb3)/2;
cos_x4=((bb4-bb5)/2)*cos(K*(x-89*t1))+bb4+(bb5-bb4)/2;
cos_x5=((bb5-bb6)/2)*cos(K*(x-129*t1))+bb5+(bb6-bb5)/2;
cos_x6=((bb6-bb7)/2)*cos(K*(x-139*t1))+bb6+(bb7-bb6)/2;
% y=(a1).*(x>=0 & x<t1)+cos_x1.*(x>=t1 & x<t1+t2)+(a2).*(x>=t1+t2 & x<2*t1+t2)+cos_x2.*(x>=2*t1+t2 & x<2*t1+2*t2)+(a3).*(x>=2*t1+2*t2 & x<3*t1+2*t2);
y=(bb1).*(x>=0 & x<29*t1)+cos_x1.*(x>=29*t1 & x<30*t1)+(bb2).*(x>=30*t1 & x<39*t1)+cos_x2.*(x>=39*t1 & x<40*t1)+(bb3).*(x>=40*t1 & x<80*t1)+cos_x3.*(x>=80*t1 & x<81*t1)+(bb4).*(x>=81*t1 & x<90*t1)+cos_x4.*(x>=90*t1 & x<91*t1)+(bb5).*(x>=91*t1 & x<131*t1)+cos_x5.*(x>=131*t1 & x<132*t1)+(bb6).*(x>=132*t1 & x<141*t1)+cos_x6.*(x>=141*t1 & x<142*t1)+(bb7).*(x>=142*t1 & x<172*t1);
end

