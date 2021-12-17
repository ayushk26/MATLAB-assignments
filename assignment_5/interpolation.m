function result = interpolation(X,Y)
m =size(X);
m = m(2);
A = zeros(m,m);
%Creating a monomial basis interpolation matrix with input values of X  
for i = 1:m;
    for j = 1:m;
        A(i,j) = X(i)^(j-1);% making elements of row 1 x x^2 x^3 and so on
    end
end
result = GEM(A,Y);%Applying gauss elimination to obtain coefficients
return
end

