P = 1:1:100;
V = P;
T=345;
v1 = input("guess number");
for i =P
    V(i)= algo(v1,P(i),T);
end
V
plot(P,V)
