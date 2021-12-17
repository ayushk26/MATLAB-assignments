function x = GEM(A,b)
[m n] = size(A);
counter =0;
% Code for pivoting
for i = 1:m-1;
    var = A(i,i);
    for j = i+1:m;
        if abs(A(j,i))>abs(var);
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
    for j = i+1:m;
        factor = A(j,i)/A(i,i); 
        counter = counter +1;
        A(j,:) = A(j,:) -factor*A(i,:);
        counter = counter + n+1-j +n -1;
        b(j) = b(j) - factor*b(i);
        counter = counter +2;
    end     
end

disp("No. of operations in Gauss elimination");
disp(counter);

x = BackSubstitution(A,b);

return
end

