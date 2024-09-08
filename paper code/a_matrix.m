function [ma] = a_matrix(dimension,a)

ma = [];
for i = 1 : dimension
    for j = 1 :dimension
         m = i-j;
         if m == 0
             ma(i,j) = 1;
         elseif m <= 0
             ma(i,j) = 0;
         else
             ma(i,j) = a(i-j+1);
         end
    end
end
end

