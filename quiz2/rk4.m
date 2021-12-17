function result = rk4(h,a,b,z_guess,u_boundary)
n = (b-a)/h;
z = zeros(n+1,1);
u = zeros(n+1,1);
z(0) = z_guess;
u(0)= u_boundary;
for i = 1:n
    uk1 = g(z);
    x = a + (i-1)*h;
    zk1 = f(x,u(i));
    uk1 = g(z(i));
    zk2 = f(x+0.5*h,u(i)+0.5*h*uk1);
    uk2 = g(z(i)+0.5*h*zk1);
    zk3 = f(x+0.5*h,u(i)+0.5*h*uk2);
    uk3 = g(z(i)+0.5*h*zk2);
    zk4 = f(x+h,u(i)+h*uk3);
    uk4 = g(z(i)+h*zk3);
    z(i+1) = (h/6)*(zk1 +2*zk2+2*zk3+zk4);
    u(i+1) = (h/6)*(uk1 +2*uk2+2*uk3+uk4);
end
result = u(n+1);
return
end

