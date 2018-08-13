%�Բ�ͬ�ĸ���������۵���Ӧ�Ⱥ���
%population_size ��Ⱥ��С
%chromosome_size 20λ��Ⱦɫ�峤��
function fitness(population_size,chromosome_size,x1chromosome_size)
global fitness_value;
global population;

global x1upper_bound;    %�Ա���ȡֵ����
global x1lower_bound;    %�Ա���ȡֵ����

global x2upper_bound;    %�Ա���ȡֵ����
global x2lower_bound;    %�Ա���ȡֵ����

for i = 1:population_size
    fitness_value(i) = 0;
    x1(i) = 0;
    x2(i) = 0;
end

for i = 1:population_size
    for j = 1:x1chromosome_size
        if population(i,j) == 1
            x1(i) = x1(i) + 2^(j-1);        %Ⱦɫ�崮��ʵ���Ա����Ķ��������෴��
        end 
    end
    for j = x1chromosome_size+1:chromosome_size
        if(population(i,j) == 1)
            x2(i) = x2(i) + 2^(j-x1chromosome_size-1);
        end
    end

    x1(i) = x1lower_bound + x1(i)*(x1upper_bound-x1lower_bound)/(2^x1chromosome_size-1); % ����
    x2(i) = x2lower_bound + x2(i)*(x2upper_bound-x2lower_bound)/(2^x1chromosome_size-1); % ����    

    fitness_value(i) = DeJongF2(x1(i),x2(i));
end

clear i;
clear j;

