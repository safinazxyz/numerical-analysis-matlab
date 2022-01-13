x1 = Fx(6);
x2 = x1 + x1 ^ 2 - 4;
a = (x2 - x1) / (x1 - 6);
q = a / (a - 1);
sonuc(1,1)=x1;
sonuc(1,2)=x2;
sonuc(1,3)=a;
sonuc(1,4)=q;

for i=1:20
    x11 = q * x1 + (1 - q) * x2;
    sonuc(1+i, 1) = x11;
    x22 = x11 + x11 ^ 2 - 4;
    sonuc(1 + i, 2) = x22;
    a = (x22 - x2) / (x11 - x1);
    q = a / (a - 1);
    sonuc(1 + i, 3) = a;
    sonuc(1 + i, 4) = q;
    x1 = x11;
    hata = abs(x22 - x2);
    x2 = x22;
    if (hata<=0.0005)
        kok1=x1;
        disp('kök 1 =')
        fprintf('%10.15f',kok1);
        kok2=x2;
        fprintf('\n')
        disp('kök 2 =')
        fprintf('%10.15f',kok2);
        break
    end
end

function F = Fx(x0)
    F = x0 + x0 ^ 2 - 4;
end