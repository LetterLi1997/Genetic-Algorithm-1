% Genetic Algorithm for Functional Minium Problem
<<<<<<< HEAD
% DeJongF2;Camel;SchafferF6;Shubert
=======
% f(x1,x2) = 100*(x1^2 -x2)^2 + (1-x1)^2;
>>>>>>> c9460b7a203120ee7eeda06dae3540203108a967
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
function [m,n,p,x1,x2] = genetic_algorithm(x1chromosome_size,population_size, chromosome_size, generation_size, cross_rate, mutate_rate, elitism)

global G ;              % ��ǰ��������
global fitness_value;   % ��ǰ����Ӧ�Ⱦ���
global best_fitness;    % ���������Ӧֵ
global fitness_average; % ����ƽ����Ӧֵ����
global best_individual; % ������Ѹ���
global best_generation; % ��Ѹ�����ִ�
<<<<<<< HEAD
global x1upper_bound;    %�Ա���ȡֵ����
global x1lower_bound;        %�Ա���ȡֵ����

global x2upper_bound;    %�Ա���ȡֵ����
global x2lower_bound;        %�Ա���ȡֵ����

% fitness_average = zeros(generation_size,1); % �� generation_size*1 ������󸳸� fitness_average

disp [jhS genetic algorithm]

fitness_value(population_size) = 0;
=======
upper_bound = 1.024;        % �Ա�������������
lower_bound = 0;        % �Ա�������������

fitness_average = zeros(generation_size,1); % �� generation_size*1 ������󸳸� fitness_average

disp [jhS genetic algorithm]

fitness_value(population_size) = 0.;
>>>>>>> c9460b7a203120ee7eeda06dae3540203108a967
best_fitness = 1000;%����Ԥ����������ֵ���ǽ���best_individual���ж�
best_generation = 0;

init(population_size, chromosome_size); % ��ʼ��

<<<<<<< HEAD
G = 0;
for G = 1:generation_size
    if(abs(best_fitness)<0.000001)
        break;
    end
    fitness(population_size, chromosome_size,x1chromosome_size);              % ������Ӧ�� 
=======
for G=1:generation_size   
    fitness(population_size, chromosome_size);              % ������Ӧ�� 
>>>>>>> c9460b7a203120ee7eeda06dae3540203108a967
    rank(population_size, chromosome_size);                 % �Ը��尴��Ӧ�ȴ�С��������
    selection(population_size, chromosome_size, elitism);   % ѡ�����
    crossover(population_size, chromosome_size, cross_rate);% �������
    mutation(population_size, chromosome_size, mutate_rate);% �������
<<<<<<< HEAD
    G = G+1;
    fprintf('%d\n',G);
    fprintf('best result is %f\n',best_fitness);
end

%plotGA(generation_size);% ��ӡ�㷨��������
=======
end

plotGA(generation_size);% ��ӡ�㷨��������
>>>>>>> c9460b7a203120ee7eeda06dae3540203108a967

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
<<<<<<< HEAD

x1 = x1lower_bound + x1*(x1upper_bound-x1lower_bound)/(2^x1chromosome_size-1); % ����
x2 = x2lower_bound + x2*(x2upper_bound-x2lower_bound)/(2^x1chromosome_size-1); % ����    
=======
x1 = lower_bound + x1*(upper_bound-lower_bound)/(2^x1chromosome_size-1); % ����
x2 = lower_bound + x2*(upper_bound-lower_bound)/(2^x1chromosome_size-1); % ����
>>>>>>> c9460b7a203120ee7eeda06dae3540203108a967


clear i;
clear j;