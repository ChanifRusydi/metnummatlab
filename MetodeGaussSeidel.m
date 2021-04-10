clear all; clc; close all;
%% Program Gauss - Seidel Method
% AX = C
% A = Matrix Koefisien
% X = Matrix Variabel (Vektor)
% C = Matrix Konstanta (Vektor)


%% Definisi Variabel

% A = [4,-1,1;4,-8,1;-2,1,5];
% C1 = [7,-21,15];
% X = [1,2,2];
A=[12,7,3;1,5,1;2,7,-11];
C=[2,-5,6];
X=[1,3,5];
n = length(A);
it = 0; nmax = 17;
Etif = 1; Etol = 1e-5;
%% Iterasi Gauss - Seidel

while and(Etif > Etol, it < nmax)
    it = it + 1;
    xold = X;

for i = 1:n
    summ = 0;
    for j = 1:n
       if (i~=j)
           summ = summ + (A(i,j)*X(j));
       end
    end
        X(i) = (C(i) - summ)/A(i,i);      
end

for i = 1:n
    ER(i) = (abs(X(i)- xold(i))/X(i));
    fprintf('%f\n',ER(i))
end
Etif = max(ER);

fprintf ('%d    %8.5f   %8.8f   %8.8f   %8.8f\n',it,X(1), X(2), X(3), Etif); 
end