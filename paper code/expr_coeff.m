
function coeff = expr_coeff(expr, subExpr)

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

syms nnn_ real
coeff = sym(zeros(length(expr), length(subExpr)));
for i = 1 : length(expr)
    for j = 1 : length(subExpr)
        res = coeffs(subs(expand(expr(i)), subExpr(j), nnn_), nnn_);  %用符号变量nnn_将表达式expr(i)中的子表达式subExpr(j)代换(不是简单的字符串替换,当表达式expr = x + 1 + a, 子表达式subExpr = x + a时，也能代换)
        if length(res) <= 1
            coeff(i, j) = 0;
        else
            coeff(i, j) = res(2);
            coeff(i, j) = subs(expand(coeff(i, j)), nnn_, subExpr(j)); %回代
        end
    end
end

end
