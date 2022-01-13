ALT=0.1;
UST=0.9;
ADIM=0.001;
Fx_alt= Fx(ALT);
Fx_ust= Fx(UST);
tol=0.0001;

x = ALT:ADIM:UST;

if(Fx_alt*Fx_ust>0)
    disp('Belirtilen aralıkta kök bulunamadı!')
else
    disp('index      Kök       Hata')
    for i=1:length(x)
        Fx_alt=Fx(ALT);
        Fx_ust=Fx(UST);
        Xm=ALT-((UST-ALT) * Fx_alt / (Fx_ust - Fx_alt));
        hata_hes=abs(Xm-UST);
        fprintf('%3i %10.6f %10.6f\n',i,Xm,hata_hes)
        if hata_hes>tol
            UST = Xm;
            Fx_ust = Fx(UST);
        else
             break
        end
        
    end
end
X_altDeger=0;
X_ustDeger=1;
X_step=0.01;

X_graph = X_altDeger:X_step:X_ustDeger;

for i=1:length(X_graph)
      sonuc(i) = Fx(X_graph(i));
end

figure(1)
datacursormode on
plot(X_graph,sonuc)
legend('Fx değerleri')
title('Fx değerleri','FontWeight','bold')
 ax = gca;
ax.XAxisLocation = 'origin';
ax.YAxisLocation = 'origin';

function F = Fx(x)
    F = x * exp(x) - 2;
end