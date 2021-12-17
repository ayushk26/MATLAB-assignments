function result = jacobi(A,b,previousX)
counter = 0;
[n n] = size(A);
result = previousX;
for i = 1:n
    %Code for pivoting
    var = A(i,i);
    for j = i+1:n
        if abs(A(j,i))>abs(var)
            temp = A(i,:);
            A(i,:)= A(j,:);
            A(j,:) = temp;
            temp1 = b(i);
            b(i) = b(j);
            b(j)=temp1;
            b(j)=temp1;
            var = A(i,i);
        end
    end
    val = b(i);
    for j = 1:n
        if j ~= i
            % using initial values from guess vector X
            val = val - A(i,j)*previousX(j);
            counter = counter + 2;
        end
    end
    val = val/A(i,i);
    counter = counter + 1;
    result(i) = val; 
end

while max(abs((result-previousX)./result)) >0.00001 % Checking for max error
% Re-iterating for closer values of X
previousX = result;
for i = 1:n
    %Code for pivoting
    var = A(i,i);
    for j = i+1:n
        if abs(A(j,i))>abs(var)
            temp = A(i,:);
            A(i,:)= A(j,:);
            A(j,:) = temp;
            temp1 = b(i);
            b(i) = b(j);
            b(j)=temp1;
            b(j)=temp1;
            var = A(i,i);
        end
    end
    val = b(i);
    for j = 1:n
        if j ~= i
            val = val - A(i,j)*previousX(j);
            counter = counter +2;
        end
    end
    val = val/A(i,i);
    counter = counter +1;
    result(i) = val; 
end
end
% In Jacobi's iteration method the values of X are diverging even after
% pivoting
display("Operation count for jacobi iteration method "+counter);
return
end

