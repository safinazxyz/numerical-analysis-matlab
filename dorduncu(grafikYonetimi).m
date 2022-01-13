ALT=10;
UST=20;
ADIM=1;
x = ALT:ADIM:UST;
sonuc = zeros(length(x),ADIM);

for i=1:length(x)
    sonuc(i) = Fc(x(i));
end

y=[transpose(x) sonuc];
disp(y);

figure
datacursormode on
plot(x,sonuc,'LineWidth',2)
xticks(x)
legend('fc')
 ax = gca;
ax.XAxisLocation = 'origin';
ax.YAxisLocation = 'origin';
title('fc','FontWeight','bold')

function F = Fc(c)
    m=double(68.1);
    t=10;
    V=40;
    g=double(9.81);
    F = (((g*m)/c)*(1-exp(-1*((c/m)*t))))-V;
end
