function [y1 y2] = euler(h,a,b,y1_boundary,y2_boundary)
n = (b-a)/h;%number of intervals
val = zeros(n+1,1);% initialising values of y1
val(1)=y1_boundary; %applying boundary condition on y1
x =a;
%Calculating approx value of function y1 with step size h
for i = 1:n
    val(i+1) = val(i) + h*f1(x,val(i));
    x= x+h;
end
y1 = val;

% Reinitialising values for y2
x = a;
val = zeros(n+1,1);
val(1)= y2_boundary; % Storing boundary condition of y2
%Calculating approx value of function y2 with step size h
for i = 1:n
    val(i+1) = val(i) + h*f2(y1(i),val(i));
end
y2 = val;
return
end

