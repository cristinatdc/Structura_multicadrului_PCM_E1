function [tab] = inserare_ts16()
%slotul 16
tab=zeros(16,8);
%primii 4 biti corespunzatori cadrului zero raman 0000=>sincronizare multicadru
%urmatorii 4 biti: XZXX
%Z va ramane zero (deocamndata);devine '1' in cazul pierderii
%sincronizarii
tab(1,5)=10;
tab(1,7)=10;
tab(1,8)=10;
%Cadrele 1-15:semnalizare pentru canalele de voce
%Cadrul 1:semnalizare canal 1 + semnalizare canal 16
%semnalizare canal 1:
tab(2,1:4)=[0 1 0 1];%On-Hook
%semnalizare canal 16:
tab(2,5:8)=[1 1 1 1];%Off-Hook
%Cadrul 2:semnalizare canal 1 + semnalizare canal 17
%semnalizare canal 2:
tab(3,1:4)=[0 1 0 1];%On-Hook
%semnalizare canal 17:
tab(3,5:8)=[1 1 1 1];%Off-Hook
%Cadrul 3:semnalizare canal 3 + semnalizare canal 18
%semnalizare canal 3:
tab(4,1:4)=[0 1 0 1];%On-Hook
%semnalizare canal 17:
tab(4,5:8)=[1 1 1 1];%Off-Hook
%Cadrul 4:semnalizare canal 4 + semnalizare canal 19
%semnalizare canal 4:
tab(5,1:4)=[0 1 0 1];%On-Hook
%semnalizare canal 19:
tab(5,5:8)=[1 1 1 1];%Off-Hook
%Cadrul 5:semnalizare canal 5 + semnalizare canal 20
%semnalizare canal 5:
tab(6,1:4)=[0 1 0 1];%On-Hook
%semnalizare canal 20:
tab(6,5:8)=[1 1 1 1];%Off-Hook
%Cadrul 6:semnalizare canal 6 + semnalizare canal 21
%semnalizare canal 6:
tab(7,1:4)=[0 1 0 1];%On-Hook
%semnalizare canal 21:
tab(7,5:8)=[1 1 1 1];%Off-Hook
%Cadrul 7:semnalizare canal 7 + semnalizare canal 22
%semnalizare canal 7:
tab(8,1:4)=[0 1 0 1];%On-Hook
%semnalizare canal 21:
tab(8,5:8)=[1 1 1 1];%Off-Hook
%Cadrul 8:semnalizare canal 8 + semnalizare canal 23
%semnalizare canal 8:
tab(9,1:4)=[0 1 0 1];%On-Hook
%semnalizare canal 23:
tab(9,5:8)=[1 1 1 1];%Off-Hook
%Cadrul 9:semnalizare canal 9 + semnalizare canal 24
%semnalizare canal 9:
tab(10,1:4)=[1 1 1 1];%Off-Hook
%semnalizare canal 24:
tab(10,5:8)=[1 1 1 1];%Off-Hook
%Cadrul 10:semnalizare canal 10 + semnalizare canal 25
%semnalizare canal 10:
tab(11,1:4)=[1 1 1 1];%Off-Hook
%semnalizare canal 21:
tab(11,5:8)=[1 1 1 1];%Off-Hook
%Cadrul 11:semnalizare canal 11 + semnalizare canal 26
%semnalizare canal 11:
tab(12,1:4)=[1 1 1 1];%Off-Hook
%semnalizare canal 21:
tab(12,5:8)=[1 1 1 1];%Off-Hook
%Cadrul 12:semnalizare canal 12 + semnalizare canal 27
%semnalizare canal 7:
tab(13,1:4)=[1 1 1 1];%Off-Hook
%semnalizare canal 21:
tab(13,5:8)=[0 1 0 1];%On-Hook
%Cadrul 13:semnalizare canal 13 + semnalizare canal 28
%semnalizare canal 7:
tab(14,1:4)=[1 1 1 1];%Off-Hook
%semnalizare canal 21:
tab(14,5:8)=[0 1 0 1];%On-Hook
%Cadrul 14:semnalizare canal 14 + semnalizare canal 29
tab(15,1:4)=[1 1 1 1];%Off-Hook
%semnalizare canal 21:
tab(15,5:8)=[0 1 0 1];%On-Hook
%Cadrul 15:semnalizare canal 15 + semnalizare canal 30
%semnalizare canal 15:
tab(16,1:4)=[1 1 1 1];%Off-Hook
%semnalizare canal 30:
tab(16,5:8)=[0 1 0 1];%On-Hook
end

