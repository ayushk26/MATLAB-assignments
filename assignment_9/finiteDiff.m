function [x result] = finiteDiff(h)

%Initialising values of variables
D=5000;
U=100;
k=2;
L=100;
c_in=100;
n=L/h;

% Substituting values of coefficeint
a=D/h^2 - U/(2*h);
b=-2*D/h^2 - k;
c=D/h^2+U/(2*h);
d=D/(2*h);
e=1/(2*h);

A = zeros(n+3);% Initialising matrix
b_vec=zeros(n+3,1);
for i=1:n+1
    A(i,i)=c;
    A(i,i+1)=b;
    A(i,i+2)=a;
end
A(n+2,1) = d;
A(n+2,2) = U;
A(n+2,3)=-d;
b_vec(n+2) = U*c_in;
A(n+3,n+1)=-e;
A(n+3,n+3)=e;

A = A*h^2;
b_vec = b_vec*h^2;
x = 0:h:L;
y = GEM(A,b_vec); % Applying gauss elimination method
y_vec = y(2:end-1);
result = y_vec;
length(x)
length(y_vec)
end
