function y = myfun_b1(x,t1,t2)
b1=148;
b2=154;
b3=157;
K=1/(t2/pi);%K为衔接段函数的缩放比例,无需修改
cos_x1=((b2-b1)/2)*cos(K*(x-t1+t2))+b1+(b2-b1)/2;%P1到P2的衔接部分
cos_x2=((b3-b2)/2)*cos(K*(x-2*t1))+b2+(b3-b2)/2;%P2到P3的衔接部分
y=(b1).*(x>=0 & x<t1)+cos_x1.*(x>=t1 & x<t1+t2)+(b2).*(x>=t1+t2 & x<2*t1+t2)+cos_x2.*(x>=2*t1+t2 & x<2*t1+2*t2)+(b3).*(x>=2*t1+2*t2 & x<3*t1+2*t2);
end