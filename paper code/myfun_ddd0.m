function y = myfun_ddd0(x,t1,t2)
ddd1=-3.646;
ddd2=-19.95;
ddd3=-15.3287;
ddd4=-31.8894;
ddd1=-3.646;
ddd2=-19.3287;
ddd3=-18.0592;
ddd4=-28.2643;
ddd1=-3.646;
ddd2=-18.2871;
ddd3=-15.2428;
ddd4=-28.3218;
ddd1=-3.646;
ddd2=-14.0064;
ddd3=-17.7371;
ddd4=-25.4619;
ddd1=-3.646;
ddd2=-14.0064;
ddd3=-16.6394;
ddd4=-24.9051;

K=1/(t2/pi);%K为衔接段函数的缩放比例,无需修改
cos_x1=((ddd1-ddd2)/2)*cos(K*(x-40*t1))+ddd1+(ddd2-ddd1)/2;
cos_x2=((ddd2-ddd3)/2)*cos(K*(x-91*t1))+ddd2+(ddd3-ddd2)/2;
cos_x3=((ddd3-ddd4)/2)*cos(K*(x-142*t1))+ddd3+(ddd4-ddd3)/2;
% y=(a1).*(x>=0 & x<t1)+cos_x1.*(x>=t1 & x<t1+t2)+(a2).*(x>=t1+t2 & x<2*t1+t2)+cos_x2.*(x>=2*t1+t2 & x<2*t1+2*t2)+(a3).*(x>=2*t1+2*t2 & x<3*t1+2*t2);
y=(ddd1).*(x>=0 & x<40*t1)+cos_x1.*(x>=40*t1 & x<41*t1)+(ddd2).*(x>=41*t1 & x<91*t1)+cos_x2.*(x>=91*t1 & x<92*t1)+(ddd3).*(x>=92*t1 & x<142*t1)+cos_x3.*(x>=142*t1 & x<143*t1)+(ddd4).*(x>=143*t1 & x<172*t1);
end

