ALT=1;
UST=2;
ADIM=0.01;
Fx_alt= Fx(ALT);
Fx_ust= Fx(UST);
tol=0.001;

x = ALT:ADIM:UST;

if(Fx_alt*Fx_ust>0)
    disp('Belirtilen aralıkta kök bulunamadı!')
else
    disp('index      Kök       Hata')
    for i=1:length(x)
        Xm=(ALT+UST)/2;
        Ym=Fx(Xm);
        Fx_alt=Fx(ALT);
        Fx_ust=Fx(UST);
        hata=abs(Xm-ALT);
        fprintf('%3i %10.6f %10.6f\n',i,Xm,hata)
        if Ym==0
            fprintf('gercek cozum x=%15.5f bulundu',Xm)
             break
        end
        if hata<tol
            break
        end
        if i==length(x)
            fprintf('%i itereasyonda cözüm elde edilemedi',length(x))
            break 
        end
        if Fx_alt*Ym <0 
            UST=Xm;
          else
            ALT=Xm;
          end
    end
end

X_altDeger=-100;
X_ustDeger=+100;
X_step=1;

X_graph = X_altDeger:X_step:X_ustDeger;
sonuc = zeros(length(X_graph),X_step);

for i=1:length(X_graph)
      sonuc(i) = Fx(X_graph(i));
end

figure
datacursormode on
plot(X_graph,sonuc)
legend('Fx değerleri')
 ax = gca;
ax.XAxisLocation = 'origin';
ax.YAxisLocation = 'origin';
title('Fx değerleri','FontWeight','bold')

function F = Fx(x)
    F = x ^ 4 - 9 * x ^ 3 - 2 * x ^ 2 + 120 * x - 130;
end