function start_CRC(M1)
    M_nou=asignare_biti_CRC(M1);
    tab_str=creare_tablou_string(M_nou);
    interfata3(tab_str);
    tabelCRC(tab_str);
end

