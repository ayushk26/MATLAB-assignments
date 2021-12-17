A = load("A.txt");
n = size(A)% getting the size of matrix A
b = zeros(15,1);% initialising values of b vector
for i = 1:15
    b(i)= 40;
end
guessX = zeros(15,1); % guess value
gaussSeidel(A,b,guessX) % result using gauss Seidel
jacobi(A,b,guessX) % result using jacobi's iteration method
GEM(A,b) % result using Gauss elimination