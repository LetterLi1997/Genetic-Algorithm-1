%evaluate the fitness function.
%population_size = 500
%chromosome_size = 36
function fitness(population_size,chromosome_size,x1chromosome_size)
global fitness_value;
global population;

global x1upper_bound;
global x1lower_bound;

global x2upper_bound;
global x2lower_bound;

for i = 1:population_size
    fitness_value(i) = 0;
    x1(i) = 0;
    x2(i) = 0;
end

for i = 1:population_size
    for j = 1:x1chromosome_size  % from binary bits 1 to 18 is of the x1
        if population(i,j) == 1
            x1(i) = x1(i) + 2^(j-1); 
        end 
    end
    for j = x1chromosome_size+1:chromosome_size  % from binary bits 19 to 36 is of the x2
        if(population(i,j) == 1)
            x2(i) = x2(i) + 2^(j-x1chromosome_size-1);
        end
    end

    x1(i) = x1lower_bound + x1(i)*(x1upper_bound-x1lower_bound)/(2^x1chromosome_size-1); % decode
    x2(i) = x2lower_bound + x2(i)*(x2upper_bound-x2lower_bound)/(2^x1chromosome_size-1); % decode 

    fitness_value(i) = F1(x1(i),x2(i));
end

clear i;
clear j;
