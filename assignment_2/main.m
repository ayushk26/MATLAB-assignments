A =load('A.txt');
b = ones(1,15);
b = b.*40;
x = GEM(A,b);
plot(x);


