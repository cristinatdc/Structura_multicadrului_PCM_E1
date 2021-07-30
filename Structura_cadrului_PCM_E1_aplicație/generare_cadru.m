function[cadru] = generare_cadru()
    cadru = zeros(1,256);
    date_cadru = randi([0,1],1,240);
    j = 1;
    %slotul 0 =>primii 8 biti
    for i = 9:128
        cadru(1,i) = date_cadru(1,j);
        j=j+1;
    end
    %slot-ul 16 =>bitii 137-256 (folosim aceasta notatie deoarece numara de la 1 nu de la 0)
    for i = 137:256
        cadru(1,i) = date_cadru(1,j);
        j = j+1;
    end
    %generam valori aleatoare pentru sloturile corespunzatoare secventei de date
    %asignam valori nule slotului zero si slotului 16
end