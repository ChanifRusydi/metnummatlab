clear all
clear all;
clc;

disp('Metode Newton Rhapson')
disp('----------------------')
Et=1e-4;
x0=1;
f=inline('x.^3+2*x.^2+10*x-20');
f1=inline('3*x.^2+4*x+10');
i=0;
xb=0;
Er=abs((xb-x0)/xb);
disp('----------------------------------------------------')
disp('      i       xi         f(xi)             Er       ')
disp('----------------------------------------------------')
while (Er>Et)
    fx=x0^3+2*x0.^2+10*x0-20;
    f_aksen=3*x0.^2+4*x0+10;
    xb=x0-(fx/f_aksen);
    Er=abs((xb-x0)/xb);
    x0=xb
    i=i+1;
    disp(sprintf('%d%f%f%f\n',i,xb,f(xb),Er));
end
disp('----------------------------------------------------')
fprintf('Maka akar dari persamaan=%1.5f\n',xb)
