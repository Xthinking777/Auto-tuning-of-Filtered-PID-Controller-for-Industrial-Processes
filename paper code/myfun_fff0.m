function y = myfun_fff0(x,t1,t2)
fff1=1.475;
fff2=9.495;
fff3=7.1903;
fff4=15.3628;
fff1=1.475;
fff2=9.1555;
fff3=8.6025;
fff4=13.6018;
fff1=1.475;
fff2=8.6237;
fff3=7.2607;
fff4=13.5876;
fff1=1.475;
fff2=6.6493;
fff3=8.2972;
fff4=12.0121;
fff1=1.475;
fff2=6.6493;
fff3=7.8574;
fff4=11.8083;

K=1/(t2/pi);
cos_x1=((fff1-fff2)/2)*cos(K*(x-40*t1))+fff1+(fff2-fff1)/2;
cos_x2=((fff2-fff3)/2)*cos(K*(x-91*t1))+fff2+(fff3-fff2)/2;
cos_x3=((fff3-fff4)/2)*cos(K*(x-142*t1))+fff3+(fff4-fff3)/2;
% y=(a1).*(x>=0 & x<t1)+cos_x1.*(x>=t1 & x<t1+t2)+(a2).*(x>=t1+t2 & x<2*t1+t2)+cos_x2.*(x>=2*t1+t2 & x<2*t1+2*t2)+(a3).*(x>=2*t1+2*t2 & x<3*t1+2*t2);
y=(fff1).*(x>=0 & x<40*t1)+cos_x1.*(x>=40*t1 & x<41*t1)+(fff2).*(x>=41*t1 & x<91*t1)+cos_x2.*(x>=91*t1 & x<92*t1)+(fff3).*(x>=92*t1 & x<142*t1)+cos_x3.*(x>=142*t1 & x<143*t1)+(fff4).*(x>=143*t1 & x<172*t1);
end

