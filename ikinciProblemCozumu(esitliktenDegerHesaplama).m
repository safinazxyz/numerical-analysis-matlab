n=1;
R= double(0.082);
basinc_alt_deger=1;
basinc_ust_deger=5;
basinc_artis_miktari=1;
sicaklik_alt_deger=0;
sicaklik_ust_deger=100;
sicaklik_artis_miktari=20;
basinc=[basinc_alt_deger:basinc_artis_miktari:basinc_ust_deger];
sicaklik=[sicaklik_alt_deger:sicaklik_artis_miktari:sicaklik_ust_deger];

for i=1:length(basinc)
    for j=1:length(sicaklik)
        hacim(j,i) = n*R*(273+sicaklik(j))/basinc(i) ;     
    end
end

figure
datacursormode on
plot(basinc,hacim,'LineWidth',2)
xlabel('Basınç (atm)')
ylabel('Hacim (lt)')
xticks(basinc)
xtickformat('%g atm')
legend(string(sicaklik) + 'C')
title('Basınç  & Sıcaklığın Hacime Etkisi')