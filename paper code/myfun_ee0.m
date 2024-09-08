function y = myfun_ee0(x,t1,t2)
ee1=0.91/66.5;
ee2=0.84/70.2;
ee3=1.02/109.4;
K=1/(t2/pi);
cos_x1=((ee1-ee2)/2)*cos(K*(x-70*t1))+ee1+(ee2-ee1)/2;
cos_x2=((ee2-ee3)/2)*cos(K*(x-121*t1))+ee2+(ee3-ee2)/2;
y=(ee1).*(x>=0 & x<70*t1)+cos_x1.*(x>=70*t1 & x<71*t1)+(ee2).*(x>=71*t1 & x<121*t1)+cos_x2.*(x>=121*t1 & x<122*t1)+(ee3).*(x>=122*t1 & x<172*t1);
end

