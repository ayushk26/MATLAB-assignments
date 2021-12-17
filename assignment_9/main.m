error=0.01;% defining error
L = 100;
h = [100 50 25 12.5 6.25 3.125 1.5625 0.78125];

for i=h
      
    [x,y] = finiteDiff(i);
    
    if i == max(h)
       plot(x,y,'LineWidth',1.3); 
    else
    plot(x,y);
    end
    hold on;
    y1 = y;
    h=h/2;
end