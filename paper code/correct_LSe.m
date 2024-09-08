function [transfer] = correct_LSe(dimension,rank,impulse_data,iter)
x=[];
hankel=[];
for i = 1 : rank
    for j = 1 :dimension
        hankel(i,j)= impulse_data(i-1+j+1);
    end
end
g1 = impulse_data(2+dimension:dimension+rank+1);
a_result = -inv((hankel')*hankel)*(hankel')*g1;
a_result(end+1) = 1;
if(dimension==1)
    a_result = fliplr(a_result);
else
    a_result = fliplr(a_result');
end
%
a2 = a_matrix(dimension+1,a_result);
g2 = impulse_data(1:dimension+1);
b_result = a2*g2;
b_result = b_result';
t=impulse_data';
n=length(impulse_data);

for i=1:iter
    switch dimension 
        case 1
            f1=@(x)sum((longDiv(b_result,[x(1) x(2)],n)-t).^2);
        case 2
            f1=@(x)sum((longDiv(b_result,[x(1) x(2) x(3)],n)-t).^2);
        case 3
            f1=@(x)sum((longDiv(b_result,[x(1) x(2) x(3) x(4)],n)-t).^2);
        case 4
            f1=@(x)sum((longDiv(b_result,[x(1) x(2) x(3) x(4) x(5)],n)-t).^2);
        otherwise
            disp('请检查阶数是否正确或重新拓展代码！');
    end
    x0=a_result;
    [x]= fminunc(f1,x0);
    a_result=x;
    switch dimension 
        case 1
            f2=@(x)sum((longDiv([x(1) x(2)],a_result,n)-t).^2);
        case 2
            f2=@(x)sum((longDiv([x(1) x(2) x(3)],a_result,n)-t).^2);
        case 3
            f2=@(x)sum((longDiv([x(1) x(2) x(3) x(4)],a_result,n)-t).^2);
        case 4
            f2=@(x)sum((longDiv([x(1) x(2) x(3) x(4) x(5)],a_result,n)-t).^2);
        otherwise
            disp('请检查阶数是否正确或重新拓展代码！');
    end
    x0=b_result;
    [x]= fminunc(f2,x0);
    b_result=x;
end

transfer = filt(b_result/a_result(1),a_result/a_result(1));%分母首项归一化