%����Ⱥ�и��尴����Ӧ�ȴ�С�������population(i)����Ӧ������i�ĵ���������
%population_size ��Ⱥ��С
%chromosome_sizeȾɫ�峤��
function rank(population_size,chromosome_size)
global population;
global fitness_value;
global fitness_sum;
global fitness_average;
global best_fitness;
global best_individual;
global best_generation;
global G;


for i = 1:population_size
    fitness_sum(i) = 0;
end


temp_chromosome(chromosome_size) = 0;

%ð������
%������С��������
for i = 1:population_size
    min_index = i;
    for j = i+1:population_size
        if fitness_value(j) < fitness_value(min_index)
            min_index = j;
        end
    end  
    
    %����min_index�к͵�i�е�Ⱦɫ���fitness_value    
    if min_index ~= i
        temp_fitness_value = fitness_value(min_index);
        fitness_value(min_index) = fitness_value(i);
        fitness_value(i) = temp_fitness_value;
        
        for k = 1:chromosome_size
            temp_chromosome(k) = population(min_index,k);
            population(min_index,k) = population(i,k);
            population(i,k) = temp_chromosome(k);        
        end    
    end    
end

%fitness_sum(i) ǰi���������Ӧ��֮��
for i = 1:population_size
    if i == 1
        fitness_sum(i) = fitness_value(1);
    else
        fitness_sum(i) = fitness_sum(i-1) + fitness_value(i);
    end
end

fitness_average(G) = fitness_sum(population_size)/population_size;

% ���������Ӧ�ȺͶ�Ӧ�ĵ���������������Ѹ���(��Ѹ������Ӧ����С)
if fitness_value(1) < best_fitness
    best_fitness = fitness_value(1);
    best_generation = G;
    for j=1:chromosome_size
        best_individual(j) = population(1,j);
    end
end


clear i;
clear j;
clear k;
clear min_index;



