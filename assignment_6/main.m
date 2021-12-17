h = [30 15 10 6 5 3 2 1 0.1 0.01 0.001 0.0001 0.00001 0.000001];
trp = h;
gaussQuadrature = h;
a = 0;
b =30;
for i = 1:length(h)
    trp(i)= trapezoidal(h(i),a,b);
    gaussQuadrature(i)=gaussQuad(h(i),a,b);  
end

%Plotting for gauss quad
subplot(1, 2, 1);
plot(h,gaussQuadrature);
title("GaussQuadrature");
xlabel("Size of interval (h)");
ylabel("Integration Value");

%plot for Trapezoidal rule
subplot(1, 2, 2);
plot(h,trp);
title("TrapezoidalMethod");
xlabel("Size of interval (h)");
ylabel("Integration Value");

%Integral values using methods
display("value of integration using gauss quadrature "+gaussQuadrature(14))
display("value of integration using trapezoidal method "+trp(14))
