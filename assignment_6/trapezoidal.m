function result = trapezoidal(h,a,b)
% returns the value of integral using trapezoidal rule
n = (b-a)/h;
integral = f(a);
for i =1:n-1
    integral = integral + 2*f(a+i*h);
end
integral = integral + f(b);
result = (h/2)*integral;
end

