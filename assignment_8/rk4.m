function [y1 y2 y3] = rk4(h,a,b,y1_boundary,y2_boundary,y3_boundary)
n = (b-a)/h;%number of intervals
y1 = zeros(n+1,1);% initialising values of y1
y2 = zeros(n+1,1);% initialising values of y2
y3 = zeros(n+1,1);% initialising values of y3
y1(1) = y1_boundary;
y2(1) = y2_boundary;
y3(1) = y3_boundary;

for i= 1:n
    y1k1 = f1(y1(i),y2(i));
    y2k1 = f2(y1(i),y2(i));
    y3k1 = f3(y2(i));
    
    y1k2 = f1(y1(i)+y1k1*(h/2),y2(i)+y2k1*(h/2));
    y2k2 = f2(y1(i)+y1k1*(h/2),y2(i)+y2k1*(h/2));
    y3k2 = f3(y2(i)+y2k1*(h/2));
    
    y1k3 = f1(y1(i)+y1k2*(h/2),y2(i)+y2k2*(h/2));
    y2k3 = f2(y1(i)+y1k2*(h/2),y2(i)+y2k2*(h/2));
    y3k3 = f3(y2(i)+y2k2*(h/2));
    
    y1k4 = f1(y1(i)+y1k3*h,y2(i)+y2k3*h);
    y2k4 = f2(y1(i)+y1k3*h,y2(i)+y2k3*h);
    y3k4 = f3(y2(i)+y2k3*h);
    
    y1(i+1) = y1(i) + (1/6)*(y1k1 +2*y1k2 + 2*y1k3 +y1k4)*h;
    y2(i+1) = y2(i) + (1/6)*(y2k1 +2*y2k2 + 2*y2k3 +y2k4)*h;
    y3(i+1) = y3(i) + (1/6)*(y3k1 +2*y3k2 + 2*y3k3 +y3k4)*h;
end
return
end

