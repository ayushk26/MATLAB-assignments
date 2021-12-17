X = [0 1 2 3 4 5 6 7 8 9 10];
Y = [0 0.5 0.8 0.9 0.94118 0.96154 0.97297 0.98000 0.98462 0.98780 0.99010];
x = [0.5 1.5 2.5 3.5 4.5 5.5 6.5 7.5 8.5 9.5];
n = length(x);
y1 = zeros(n,1);
y2 = zeros(n,1);

for i = 1:n
    y1(i) = LagrangeIP(X,Y,x(i));
    y2(i) = cubicSpline(X,Y,x(i));
end
display("Result using Lagrange Interpolation");
y1
display("Result using Cubic Spline");
y2