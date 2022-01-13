ALT=0;
UST=1;
ADIM=0.01;
Fx_alt= Fx(ALT);
Fx_ust= Fx(UST);

sonuc = zeros(101,1);
x = ALT:ADIM:UST;

for i=1:length(x)
      sonuc(i) = Fx(x(i));
end

y=[transpose(x) sonuc];
disp(y);

figure
datacursormode on
plot(x,sonuc,'LineWidth',2)
yticks([Fx_alt Fx_ust])
xticks(x)
ax = gca;
ax.XAxisLocation = 'origin';
ax.YAxisLocation = 'origin';
legend('Seri 1')

function F = Fx(x)
    F = x *  exp(x) - 2;
end
