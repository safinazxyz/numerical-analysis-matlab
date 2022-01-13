ALT=0;
UST=1;
ADIM=0.1;
Fx_alt= Fx(ALT);
Fx_ust= Fx(UST);

sonuc = zeros(11,1);
x = ALT:ADIM:UST;

for i=1:length(x)
      sonuc(i) = Fx(x(i));
end

y=[transpose(x) sonuc];
disp(y);

figure
datacursormode on
plot(x,sonuc,'LineWidth',2)
yticks(sonuc)
xticks(x)
legend('Seri 1')
 ax = gca;
ax.XAxisLocation = 'origin';
ax.YAxisLocation = 'origin';
function F = Fx(x)
    F = x *  exp(x) - 2;
end
