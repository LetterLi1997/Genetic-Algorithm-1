% �����Ŵ��㷨�Ĳ���������Ч��
% �趨��⾫��ΪС�����4λ

function main()
<<<<<<< HEAD
global x1upper_bound;    %�Ա���ȡֵ����
global x1lower_bound;        %�Ա���ȡֵ����

global x2upper_bound;    %�Ա���ȡֵ����
global x2lower_bound;        %�Ա���ȡֵ����
elitism = true;             % ѡ��Ӣ����
population_size = 1000;      % ��Ⱥ��С
chromosome_size = 200;       % Ⱦɫ�峤��
x1chromosome_size = 100;
generation_size = 5000;      % ����������
cross_rate = 0.6;           % �������
mutate_rate = 0.2;         % �������

x1upper_bound = -1.024;    %�Ա���ȡֵ����
x1lower_bound = 1.024;        %�Ա���ȡֵ����

x2upper_bound = -1.024;    %�Ա���ȡֵ����
x2lower_bound = 1.024;        %�Ա���ȡֵ����
=======
elitism = true;             % ѡ��Ӣ����
population_size = 100;      % ��Ⱥ��С
chromosome_size = 20;       % Ⱦɫ�峤��
x1chromosome_size = 10;
generation_size = 50;      % ����������
cross_rate = 0.8;           % �������
mutate_rate = 0.01;         % �������
>>>>>>> c9460b7a203120ee7eeda06dae3540203108a967

[best_individual,best_fitness,iterations,x1,x2] = genetic_algorithm(x1chromosome_size,population_size, chromosome_size, generation_size, cross_rate, mutate_rate,elitism);


<<<<<<< HEAD
fprintf('best result is %f\nwhen\nx1 = %f\nx2 = %f\n',best_fitness,x1,x2);
fprintf('best result appears in the %dth iteration\n',iterations);






=======
fprintf('x1 = %f\nx2 = %f\n',x1,x2);
fprintf('best_fitness is %f\n',best_fitness);
>>>>>>> c9460b7a203120ee7eeda06dae3540203108a967
