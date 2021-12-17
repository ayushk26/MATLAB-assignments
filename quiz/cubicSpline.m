function result = cubicSpline(X,Y,x)
n = length(X);
A = zeros(4*n-4);
b = zeros(4*n-4,1);

for i = 1:2:2*n-3
    A(i,2*i-1)= (X((i+1)/2))^3;
    A(i,2*i)= (X((i+1)/2))^2;
    A(i,2*i+1)= X((i+1)/2);
    A(i,2*i+2)= 1;
    A(i+1,2*i-1)= (X((i+1)/2))^3;
    A(i+1,2*i)= (X((i+1)/2))^2;
    A(i+1,2*i+1)= X((i+1)/2);
    A(i+1,2*i+2)= 1;
    b(i) = Y((i+1)/2);
    b(i+1)= Y((i+1)/2);
end


t =2;
u = 2;
for i = 2*n-1:3*n-4
    A(i,t-1) = 3*(X(u)^2);
    A(i,t) = 2*(X(u));
    A(i,t+1) = 1;
    A(i,t+2) = 0;
    A(i,t+3) = -3*(X(u)^2);
    A(i,t+4) = -2*(X(u));
    A(i,t+5) = -1;
    A(i,t+6) = 0;
    t = t+4;
    u = u+1;
end

t = 2;
u = 2;
for i = 3*n-3:4*n-6
   A(i,t-1) = 6*(X(u));
    A(i,t) = 2;
    A(i,t+1) = 0;
    A(i,t+2) = 0;
    A(i,t+3) = -6*(X(u));
    A(i,t+4) = -2;
    A(i,t+5) = 0;
    A(i,t+6) = 0;
    t = t+4;
    u = u+1; 
end

A(4*n-5,1) = 1;
A(4*n-4,2) = 1;

coeff = GEM(A,b);
C = [1 1 1 1];
for i = 1:n-1
    if x>=X(i) & x<X(i+1)
        C = [coeff(4*i-3) coeff(4*i-2) coeff(4*i-1) coeff(4*i)];
    end
end
val = 0;
val = C(1)*(x^3)+C(2)*(x^2)+C(3)*(x)+ C(4); 
result = val;
end

