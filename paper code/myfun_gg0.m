function y = myfun_gg0(x,t1,t2)
gg1=148;
gg2=154;
gg3=157;
K=1/(t2/pi);
cos_x1=((gg1-gg2)/2)*cos(K*(x-70*t1))+gg1+(gg2-gg1)/2;
cos_x2=((gg2-gg3)/2)*cos(K*(x-121*t1))+gg2+(gg3-gg2)/2;
y=(gg1).*(x>=0 & x<70*t1)+cos_x1.*(x>=70*t1 & x<71*t1)+(gg2).*(x>=71*t1 & x<121*t1)+cos_x2.*(x>=121*t1 & x<122*t1)+(gg3).*(x>=122*t1 & x<172*t1);
end