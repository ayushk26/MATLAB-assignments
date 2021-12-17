function result = BackSubstitution(A,b);
[m n] =size(A);
x = 1:n;
counter =0;
for i = 1:n;
    val = b(n+1-i);
    j = i;
    while j>1;
        val = val - A(n+1-i,n+2-j)*x(n+2-j);
        counter = counter + 2;
        j = j-1;
    end   
    val = val/ A(n+1-i,n+1-i);
    counter = counter + 1;
    x(n+1-i)=val;
end
disp("No. of operations in back-substitution");
disp(counter);
result = x;
return
end

