function result = gaussQuadofSingleInterval(a,b)
p = (b-a)/2;
q = (a+b)/2;
t = 1/sqrt(3);
% g(t) = p*f(p*t +q) & C0 = C1 = 1
result = p*f(p*(-1*t)+q) + p*f(p*(1*t)+q); % returns C0*g(t0) + C1*g(t1) for interval (a,b)
return
end

