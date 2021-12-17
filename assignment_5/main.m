% Obtaining coefficients by interpolation of data set X and Y with
% monomial basis

X = [0 1 4 9 16 25 36 49 64]; %Input values of X
Y = [0 1 2 3 4 5 6 7 8]; % Input values of Y
coeffs = interpolation(X,Y); %Calling of interpolation method to calculate coefficients

%Calculating difference of function values obtained using obtained function and by
%direct sqrt() method
x = 0.5:1:7.5;
for i = x
   display("Difference f(x)-sqrt(x) for x = "+i+" is "+(f(i,coeffs)-sqrt(i))+" ");
end
%Plotting the obtained function and the sqrt function
x1 = 0.5:1:50;
x = 0.5:0.5:50;
y = zeros(1,100);
for i = x;
    y(2*i)=f(i,coeffs);
end
%plot
scatter(X,Y);
hold on;
plot(x,sqrt(x));
hold on;    
plot(x,y);