%popultion_size ��Ⱥ��С
%chromosome_size 20λȾɫ�峤��

function init(population_size,chromosome_size)
global population;
for i = 1:population_size
    for j = 1:chromosome_size
        population(i,j) = round(rand);
    end
end
clear i;
clear j;