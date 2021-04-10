clear all;
clc;

xbawah=1;
xatas=1.5;
err_tolerance=1e-6
err_relatif=1
iterasi=0
xnew=0

while err_relatif>err_tolerance
    iterasi=iterasi+1
    xtengah=(xatas+xbawah)/2
    fbawah=fungsi(xbawah);
    ftengah=fungsi(xtengah);
    if (fbawah*ftengah)==0
        fprintf('Xm adalah akar');
    elseif (fbawah*ftengah)>0
          xbawah=xtengah
    else
            xatas=xtengah
    end
    err_realtif=abs((xnew-xtengah)/xtengah)
    xnew=xtengah
end
fprintf('%f',xnew);
fprintf('%d',iterasi);