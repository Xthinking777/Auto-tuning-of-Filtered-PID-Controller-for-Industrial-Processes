function y = myfun_cccc0(x,t1,t2)
bbb1=-1;
bbb2=-1;
K=1/(t2/pi);
cos_x1=((bbb1-bbb2)/2)*cos(K*(x-40*t1))+bbb1+(bbb2-bbb1)/2;
y=(bbb1).*(x>=0 & x<7500)+cos_x1.*(x>=7500 & x<7600)+(bbb2).*(x>=7600);
end