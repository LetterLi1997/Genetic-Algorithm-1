% Genetic Algorithm for Functional Minium Problem
% ���Ժ�����DeJongF2; Camel; SchafferF6; Shubert
% Created by jiahuiShe @2018/5/23

% population_size: ������Ⱥ��С
% chromosome_size: ����Ⱦɫ�峤��
% generation_size: �����������
% cross_rate: ���뽻�����
% mutate_rate: ����������
% elitism: �����Ƿ�Ӣѡ��
% m: �����Ѹ���
% n: ��������Ӧ��
% p: �����Ѹ�����ֵ�������
% q: �����Ѹ����Ա���ֵ
function [m,n,p,x1,x2] = genetic_algorithm(x1chromosome_size,population_size, chromosome_size, generation_size, cross_rate, mutate_rate)

global G ;                    %��ǰ��������
global fitness_value;         %��ǰ����Ӧ�Ⱦ���
global best_fitness;          %���������Ӧֵ
global fitness_average;       %����ƽ����Ӧֵ����
global best_individual;       %������Ѹ���
global best_generation;       %��Ѹ�����ִ�

global x1upper_bound;         %�Ա���x1ȡֵ����
global x1lower_bound;         %�Ա���x1ȡֵ����

global x2upper_bound;    %�Ա���x2ȡֵ����
global x2lower_bound;    %�Ա���x2ȡֵ����
global population;

disp [jhS genetic algorithm]

fitness_average = zeros(generation_size); % �� generation_size*1 ������󸳸� fitness_average
fitness_value(population_size) = 0;
best_fitness = 0;
best_generation = 0;

for i = 1:population_size
    for j = 1:chromosome_size
        population(i,j) = round(rand);
    end
end


for G=1:generation_size      
    fitness(population_size, chromosome_size,x1chromosome_size);              % ������Ӧ�� 
    rank(population_size, chromosome_size);                 % �Ը��尴��Ӧ�ȴ�С��������
    selection(population_size, chromosome_size);            % ѡ�����
    crossover(population_size, chromosome_size, cross_rate);% �������
    mutation(population_size, chromosome_size, mutate_rate);% �������

    G = G+1;
    fprintf('%d\n',G);
    fprintf('best result is %f\n',best_fitness);
    if(abs(best_fitness)<0.0001)
        break;
    end
end


m = best_individual;    % �����Ѹ���
n = best_fitness;       % ��������Ӧ��
p = best_generation;    % �����Ѹ������ʱ�ĵ�������

% �����Ѹ������ֵ���Բ�ͬ���Ż�Ŀ�꣬������Ҫ�޸�
x1 = 0;
x2 = 0;
for j=1:x1chromosome_size
    if best_individual(j) == 1
            x1 = x1+2^(j-1);  % ��Ѹ������������תʮ����
    end 
end

for j=x1chromosome_size+1:chromosome_size
    if best_individual(j) == 1
            x2 = x2+2^(j-x1chromosome_size-1);  % ��Ѹ������������תʮ����
    end 
end

x1 = x1lower_bound + x1*(x1upper_bound-x1lower_bound)/(2^x1chromosome_size-1); % ����
x2 = x2lower_bound + x2*(x2upper_bound-x2lower_bound)/(2^x1chromosome_size-1); % ����    

clear i;
clear j;