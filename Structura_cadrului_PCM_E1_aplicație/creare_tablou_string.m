function [tab_str] = creare_tablou_string(M1)
    tab_str = cell(16,256);
    for i=1:16
            for j=1:256
                if(M1(i,j)==10)
                    tmp = sprintf('X');
                    tab_str{i,j} = tmp;
                elseif(M1(i,j)==11)
                    tmp = sprintf('Y');
                    tab_str{i,j} = tmp;
                elseif(M1(i,j)==12)
                    tmp = sprintf('E');
                    tab_str{i,j} = tmp;
                elseif(M1(i,j)==13)
                    tmp = sprintf('Z');
                    tab_str{i,j} = tmp;
                else
                     tmp = sprintf('%g',M1(i,j));
                     tab_str{i,j} = tmp;
                end
            end
    end
end

