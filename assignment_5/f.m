function result = f(x,coeffs)
% calculate value of f(x) with given coefficients
n= size(coeffs);
n = n(2);
val = 0;
for i = 1:n
    val = val + coeffs(i)*x^(i-1);
end
result =val;
return
end

