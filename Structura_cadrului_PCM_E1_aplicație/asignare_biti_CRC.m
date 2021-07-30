function [M_nou] = asignare_biti_CRC(M1)
    info=zeros(1,1290);%240 de biti de date per cadru(corespunzatoare canalelor 1,2,3...14,15,17...32)*8 cadre
    k=1;
    %CALCULARE/ASIGNARE BITI PENTRU PRIMUL CRC:
    %primul submulticadru
    %sarim peste bitii corespunzatori canalului zero si canalului 16
    for i=1:8
        for j=9:256
               if (j<=128 || j>136)
                   info(k) = M1(i,j);
                   k=k+1;  
               end
        end
    end
    CRC=CRC_4_calculator(info);
    M1(1,1)=CRC(1);
    M1(3,1)=CRC(2);
    M1(5,1)=CRC(3);
    M1(7,1)=CRC(4);
    %CALCULARE/ASIGNARE BITI PENTRU AL DOILEA CRC:
    for i=9:16
        for j=9:256
               if (j<=128 || j>136)
                   info(k) = M1(i,j);
                   k=k+1;  
               end
        end
    end
    CRC=CRC_4_calculator(info);
    M1(9,1)=CRC(1);
    M1(11,1)=CRC(2);
    M1(13,1)=CRC(3);
    M1(15,1)=CRC(4);
    M_nou=M1;%actualizam bitii Y corespunzatori si trimitem noul multicadru ca parametru de iesire al functiei
end

