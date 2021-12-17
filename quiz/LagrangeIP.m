function result = LagrangeIP(X,Y,x)
n = length(X);
func = 0;
for i =1:n
    val = 1;
    for j = 1:n
        if j ~=i
            val = val*((x-X(j))/(X(i)-X(j)));
        end
    end
    func = func + val*Y(i);
end

result = func;
end

