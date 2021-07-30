function [multicadru] = generare_multicadru()
multicadru=zeros(16,256);
for i=1:16
    multicadru(i,:)=generare_cadru();
end

