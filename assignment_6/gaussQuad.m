function result = gaussQuad(h,a,b)
n = (b-a)/h;
integral = 0;
for i = 1:n
    %Add up the values of integral in all intervalss
    integral = integral + gaussQuadofSingleInterval(a+(i-1)*h,a+i*h);
end
% return the total integral value
result =  integral;
return
end

