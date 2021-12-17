function result = algo(V,P,T)
delta = 0.01;
newV = V - (f(P,T,V)*delta)/(f(P,T,V)-f(P,T,V-delta));

if abs((newV- V)/newV) <= 0.00001
    result = newV;
    return
else
    result = algo(newV,P,T);
    return
end
