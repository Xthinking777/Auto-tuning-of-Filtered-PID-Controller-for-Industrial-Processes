function [ f_ya ] = Get_f_ya( y , F)
N=length(y);
m1=armax(y,[20 20]);
e=resid(m1,y);
close
e_var=var(e.outputdata);
e.outputdata=e.outputdata/F(1);
e_var=var(e.outputdata);
for r=0:1000
    f_ya(r+1)=y(r+1:end)'*e.outputdata(1:end-r)/(N-r)*e_var;
end
end