% �����Ŵ��㷨�Ĳ���������Ч��
% �趨��⾫��ΪС�����4λ

function main()
global x1upper_bound;        %�Ա���x1ȡֵ����
global x1lower_bound;        %�Ա���x2ȡֵ����

global x2upper_bound;        %�Ա���ȡֵ����
global x2lower_bound;        %�Ա���ȡֵ����
population_size = 1000;      %��Ⱥ��С
chromosome_size = 200;       %Ⱦɫ�峤��
x1chromosome_size = 100;
generation_size = 100;      %����������
cross_rate = 0.6;            %�������
mutate_rate = 0.2;           %�������

x1upper_bound = 1.024;      %�Ա���x1ȡֵ����
x1lower_bound = -1.024;       %�Ա���x2ȡֵ����

x2upper_bound = 1.024;      %�Ա���x2ȡֵ����
x2lower_bound = -1.024;       %�Ա���ȡֵ����


[~,~,iterations,x1,x2] = genetic_algorithm(x1chromosome_size,population_size, chromosome_size, generation_size, cross_rate, mutate_rate);


fprintf('x1 = %f\nx2 = %f\n',x1,x2);
fprintf('best result appears in the %dth iteration\n',iterations);
