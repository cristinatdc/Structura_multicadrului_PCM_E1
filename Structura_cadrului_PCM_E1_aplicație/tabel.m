function [] = tabel(tab_str)
    fig2 = uifigure;
    fig2.Position = [0 40 1510 320];
   	set(fig2,'Name','Multicadru');
    tabel = uitable(fig2,'ColumnWidth',{25 25 25 25 25 25 25 25 10 10 10 10 10 10 10 10 10 10 10 10,...
                                        10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10,...
                                        10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10,...
                                        10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10,...
                                        10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10,...
                                        10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10,...
                                        10 10 10 10 10 10 10 10 25 25 25 25 25 25 25 25 10 10 10 10,...
                                        10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10,...
                                        10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10,...
                                        10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10,...
                                        10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10,...
                                        10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10,...
                                        10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10,...
                                        10 10 10 10});
    tabel.ColumnEditable = true;
    tabel.FontSize = 8;
    tabel.BackgroundColor = [1 1 1 ;0.65 0.85 1];
    tabel.ColumnName = {'1','2','3','4','5','6','7','8',...
                        '1','2','3','4','5','6','7','8',...
                        '1','2','3','4','5','6','7','8',...
                        '1','2','3','4','5','6','7','8',...
                        '1','2','3','4','5','6','7','8',...
                        '1','2','3','4','5','6','7','8',...
                        '1','2','3','4','5','6','7','8',...
                        '1','2','3','4','5','6','7','8',...
                        '1','2','3','4','5','6','7','8',...
                        '1','2','3','4','5','6','7','8',...
                        '1','2','3','4','5','6','7','8',...
                        '1','2','3','4','5','6','7','8',...
                        '1','2','3','4','5','6','7','8',...
                        '1','2','3','4','5','6','7','8',...
                        '1','2','3','4','5','6','7','8',...
                        '1','2','3','4','5','6','7','8',...
                        '1','2','3','4','5','6','7','8',...
                        '1','2','3','4','5','6','7','8',...
                        '1','2','3','4','5','6','7','8',...
                        '1','2','3','4','5','6','7','8',...
                        '1','2','3','4','5','6','7','8',...
                        '1','2','3','4','5','6','7','8',...
                        '1','2','3','4','5','6','7','8',...
                        '1','2','3','4','5','6','7','8',...
                        '1','2','3','4','5','6','7','8',...
                        '1','2','3','4','5','6','7','8',...
                        '1','2','3','4','5','6','7','8',...
                        '1','2','3','4','5','6','7','8',...
                        '1','2','3','4','5','6','7','8',...
                        '1','2','3','4','5','6','7','8',...
                        '1','2','3','4','5','6','7','8',...
                        '1','2','3','4','5','6','7','8',...
                       };
    tabel.RowName = {'0','1','2','3','4','5','6','7','8','9','10','11','12','13','14','15'};
    set(tabel,'Data',tab_str);
    tabel.Position = [0 0 1510 325];
    s = uistyle; 
    s.FontColor = 'red'; 
    addStyle(tabel,s);
    s1 = uistyle;
    s1.BackgroundColor = 'cyan';
    addStyle(tabel,s1,'column',[1 2 3 4 5 6 7 8 129 130 131 132 133 134 135 136])
end

