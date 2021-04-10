clear all
clc;
close all

xl=1;   %batas nilai bawah
xu=1.5;    %batas nilai atas
err_tolerance=10^-6;
err_relative=1;
% xm0=(xl+xu)/2;
xmnew=0;
hitung=0;
while err_relative > err_tolerance
    
    hitung=hitung+1;
    xm=(xl+xu)/2;
    fbelow=fungsi(xl);
    fmiddle=fungsi(xm);
 if (fbelow*fmiddle)==0
     fprintf('Xm adalah akar');
 elseif (fbelow*fmiddle) < 0
     xu=xm;
 elseif (fbelow*fmiddle) > 0
     xl=xm;
 end
 err_relative=abs((xmnew-xm)/xmnew);
 xmnew=xm;
 fprintf('%d    %f   %f \n',hitung, xm, err_relative)
end
fprintf('%f',xmnew);
fprintf('%d',hitung);