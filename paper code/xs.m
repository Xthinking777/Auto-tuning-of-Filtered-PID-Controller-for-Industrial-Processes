%{
Function: expr_coeff
Description: 提取任意符号表达式中，任意子表达式的系数
Input: 任意符号表达式expr(一维矩阵，元素个数可以大于1)；任意符号子表达式subExpr(一维矩阵，元素个数可以大于1)
Output: 任意符号表达式中，任意子表达式的系数coeff
Author: Marc Pony(marc_pony@163.com)
%}
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



% syms nnn_ real
% coeff = sym(zeros(length(expr), length(subExpr)));
% for i = 1 : length(expr)
%     for j = 1 : length(subExpr)
%         res = coeffs(subs(expand(expr(i)), subExpr(j), nnn_), nnn_);  %用符号变量nnn_将表达式expr(i)中的子表达式subExpr(j)代换(不是简单的字符串替换,当表达式expr = x + 1 + a, 子表达式subExpr = x + a时，也能代换)
%         if length(res) <= 1
%             coeff(i, j) = 0;
%         else
%             coeff(i, j) = res(2);
%             coeff(i, j) = subs(expand(coeff(i, j)), nnn_, subExpr(j)); %回代
%         end
%     end
% end

end
