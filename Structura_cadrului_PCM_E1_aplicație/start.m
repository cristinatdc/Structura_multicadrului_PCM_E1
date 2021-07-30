clear all;
close all;
clc;
M1=generare_multicadru();
M=inserare_ts16();
M1(1:16,1:8)=slot_zero();
M1(1:16,129:136)=inserare_ts16();
tab_str=creare_tablou_string(M1);
interfata1(tab_str,M1);