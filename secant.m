clear all;
clc;

x0=1;
x1=1.5;
error=1e-6;
iterasi=0;
error_relatif=1;
while error<error_relatif
    xnew=x1-(fungsi(x1)*(x1-x0)/(fungsi(x1)-fungsi(x0)));
    err_relatif=abs(x0-x1);
    fprintf("%d       %4.5f       %5.6f\n",iterasi,x1,error_relatif);
    x0=x1;
    x1=xnew;
    iterasi=iterasi+1;
    if isnan(x1)
        break;
    end
end
x=1:0.1:1.5;
sumbuy=x.^3+2*x.^2+10*x-2;
grid on
hold on
plot(x, sumbuy);