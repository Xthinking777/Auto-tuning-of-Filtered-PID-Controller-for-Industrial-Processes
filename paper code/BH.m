function [ wn ] =BH( y,j1,j2 )
m1=armax(y,[j1 j2]);
e=resid(m1,y);
e_var=var(e.outputdata);
wn=e.outputdata*(1/sqrt(e_var));
end
