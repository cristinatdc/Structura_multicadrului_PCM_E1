function eronare_recalculare(M1)
    M=asignare_biti_CRC(M1);
    M_eronat=M;
    %eronam cativa biti
    for j=16:25
        if M_eronat(4,j)==0
            M_eronat(8,23)=1;
        else
            M_eronat(8,23)=1;
        end
    end
     if M_eronat(13,5)==0
            M_eronat(13,5)=1;
        else
    M_nou=asignare_biti_CRC(M_eronat);
    E1=0;
    E2=0;
    if (M1(1,1)~= M_eronat(1,1))||(M1(3,1)~= M_eronat(3,1))||(M1(5,1)~= M_eronat(5,1))||(M1(7,1)~= M_eronat(7,1))
        E1=1;
    end
    if (M1(9,1)~= M_eronat(9,1))||(M1(11,1)~= M_eronat(11,1))||(M1(13,1)~= M_eronat(13,1))||(M1(15,1)~= M_eronat(15,1))
        E2=1;
    end
    M_nou(14,1)=E1;
    M_nou(16,1)=E2;
    tab_str=creare_tablou_string(M_nou);
    tabel_eroare(tab_str);
end
