% �����Ŵ��㷨�Ĳ���������Ч��
% �趨��⾫��ΪС�����4λ

function main()
elitism = true;             % ѡ��Ӣ����
population_size = 100;      % ��Ⱥ��С
chromosome_size = 20;       % Ⱦɫ�峤��
x1chromosome_size = 10;
generation_size = 50;      % ����������
cross_rate = 0.8;           % �������
mutate_rate = 0.01;         % �������

[best_individual,best_fitness,iterations,x1,x2] = genetic_algorithm(x1chromosome_size,population_size, chromosome_size, generation_size, cross_rate, mutate_rate,elitism);


fprintf('x1 = %f\nx2 = %f\n',x1,x2);
fprintf('best_fitness is %f\n',best_fitness);
