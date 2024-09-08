function coeff = xs(expr, subExpr)

if size(expr, 1) > 1 && size(expr, 2) > 1
    error('符号表达式必须为一维矩阵')
end
if ~isa(expr, 'sym')
    error('输入表达式必须为符号表达式')
end

if size(subExpr, 1) > 1 && size(subExpr, 2) > 1
    error('符号表达式必须为一维矩阵')
end
if ~isa(subExpr, 'sym')
    error('输入表达式必须为符号表达式')
end

a11=coeffs(expr,subExpr(1));
if size(a11,2)>=1
    a12=a11(1);
else
    a12=0;
end
a13=coeffs(a12,subExpr(2));
if size(a13,2)>=1
    a14=a13(1);
else
    a14=0;
end
a15=coeffs(a14,subExpr(3));
a=size(a15,2);
if a>=1
    coeff=a15(1);
        
else
    coeff=0;


end
