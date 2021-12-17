%interval of a,b
a = 0;
b= 4;
% Defining the values of h
n = 10;
h = zeros(n,1);
h = [4 2 1 0.5 0.25 0.125 0.0625 0.03125 0.015625];

for i = h
    x = 0:i:4;% defining the values of x depending upon step size
    [y1 y2] = euler(i,a,b,2,4);%calulate functions y1 and y2 for stepval = i
    
%Plotting values of y1 for different h
subplot(1, 2, 1);
if i == min(h)
plot(x,y1,"LineWidth",1.1);% converged solution of y1
else
   plot(x,y1); 
end
title("y1 for different values of h");
xlabel("x");
ylabel("y1");
hold on;

%Plotting values of y2 for different h
subplot(1, 2, 2);
if i == min(h)
plot(x,y2,"LineWidth",1.1);% converged solution of y2
else
   plot(x,y2); 
end
title("y2 for different values of h");
xlabel("x");
ylabel("y2");
hold on;
end
