function [TS0] = slot_zero()
    %Y=bit international
    %X=bit neutilizat
    %Z=bit de alarma; 
    z=13;
    %devine '1' in cazul pierderii sincronizarii
    x=10;
    y=11;%valori arbitrare
    e=12;
    TS0=zeros(16,8);
    %semnalizarea in cadre pare: Y0011011
    %apar diferente in numerotarea cadrelor datorita faptului ca indexarea
    %tablourilor in matlab nu incepe de la zero ci de la 1
    for i = 1:2:15
        TS0(i,1) = y;
        TS0(i,2) = 0;
        TS0(i,3) = 0;
        TS0(i,4) = 1;
        TS0(i,5) = 1;
        TS0(i,6) = 0;
        TS0(i,7) = 1;
        TS0(i,8) = 1;
    end
    %semnalizarea in cadre impare: Y1ZXXXXX
    for j = 2:2:16
        TS0(j,2) = 1;
        TS0(j,3) = z;
        TS0(j,4) = x;
        TS0(j,5) = x;
        TS0(j,6) = x;
        TS0(j,7) = x;
        TS0(j,8) = x;
    end
        TS0(6,1) = 1;
        TS0(10,1) = 1;
        TS0(12,1) = 1;
        TS0(14,1) = e;
        TS0(16,1) = e;
end
