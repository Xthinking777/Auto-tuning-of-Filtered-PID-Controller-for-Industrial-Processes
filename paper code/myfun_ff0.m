function y = myfun_ff0(x,t1,t2)
ff1=1/66.5;
ff2=1/70.2;
ff3=1/109.4;
K=1/(t2/pi);
cos_x1=((ff1-ff2)/2)*cos(K*(x-70*t1))+ff1+(ff2-ff1)/2;
cos_x2=((ff2-ff3)/2)*cos(K*(x-121*t1))+ff2+(ff3-ff2)/2;
y=(ff1).*(x>=0 & x<70*t1)+cos_x1.*(x>=70*t1 & x<71*t1)+(ff2).*(x>=71*t1 & x<121*t1)+cos_x2.*(x>=121*t1 & x<122*t1)+(ff3).*(x>=122*t1 & x<172*t1);
end

