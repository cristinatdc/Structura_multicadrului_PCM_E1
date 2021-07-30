function [CRC] = CRC_4_calculator(informatia)
    g=[1 0 0 1 1];%polinomul generator,de grad 4
    produs=conv([1 0 0 0],informatia);%inmultim polinomul corespunzator informatiei cu X^4
    [q,r]=gfdeconv(produs,g);%impartim  rezultatul anterior cu polinomul generator tinand cont ca impartirea sa fie modulo 2
    rezultat=[produs,r];%adunam restul 
    CRC=rezultat(1921:1924);%se obtine un vector cu 4 valori C1,C2,C3,C4
end

