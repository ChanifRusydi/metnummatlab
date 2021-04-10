clear all; clc; close all;
x0=1;
err_relatif=1;
err_tolerance=10^-6;
iterasi=0;
fprintf("Iterasi      Akar           Error Relatif\n");
while err_relatif>err_tolerance
     iterasi=iterasi+1;
     xnew=g(x0);
     err_relatif=abs((xnew-x0)/xnew);
     fprintf("%d       %f        %f \n",iterasi,x0,err_relatif);
     x0=xnew;
end
