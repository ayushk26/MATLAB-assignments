function result = gaussSeidel(A,b,previousX)
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
    % first iteration 
    val = b(i);
    for j = 1:n
        if j ~= i
            val = val - A(i,j)*result(j);
            counter = counter+2;
        end
    end
    val = val/A(i,i);
    counter = counter +1;
    result(i) = val; % replacing values in result simultaniously
end
while max(abs((result-previousX)./result)) > 0.00000000001 %checking for max error
%Re-iterating to get closer values of result
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
            val = val - A(i,j)*result(j);
            counter = counter +2;
        end
    end
    val = val/A(i,i);
    counter = counter +1;
    result(i) = val; 
end
end
display("Operation count for gauss seidel method "+counter);
return
end

