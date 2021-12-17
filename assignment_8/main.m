h = 0.0001;
[rk4_y1 rk4_y2 rk4_y3] = rk4(h,0,4,95,5,0);
[rk5_y1 rk5_y2 rk5_y3] = rk5(h,0,4,95,5,0);
x = 0:h:4;
subplot(3,1,1)
plot(x,rk4_y1);
hold on
plot(x,rk5_y1);
hold on
subplot(3,1,2)
plot(x,rk4_y2);
hold on
plot(x,rk5_y2);
hold on
subplot(3,1,3)
plot(x,rk4_y3);
hold on
plot(x,rk5_y3);
hold on
