clear all; clc; close all;
%% Program Gauss - Seidel Method
% AX = C
% A = Matrix Koefisien
% X = Matrix Variabel (Vektor)
% C = Matrix Konstanta (Vektor)


%% Definisi Variabel

A = [4,-1,1;4,-8,1;-2,1,5];
C1 = [7,-21,15];
X = [1,2,2];
n = length(A);
it = 0; nmax = 17;
Etif = 1; Etol = 1e-5;
%% Iterasi Gauss - Seidel
P=X';
C=C1';
while and(Etif > Etol, it < nmax)
    it = it + 1;
    xold = X;
%for i = 1:n
for j = 1:n
    X(j) = (C(j)-A(j,[1:j-1,j+1:n])*P([1:j-1,j+1:n]))/A(j,j);     
end 

for i = 1:n;
    ER(i) = (abs(X(i)- xold(i))/X(i));
end
Etif = max(ER);
P=X';
fprintf ('%d    %8.5f   %8.8f   %8.8f   %8.8f\n',it,X(1), X(2), X(3), Etif); 
end