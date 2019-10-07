% 打印算法迭代过程
% generation_size: 迭代次数

function plotGA(generation_size)
global fitness_average;
global every_fitness;
global best_fitness_group;

x = 1:generation_size;
y = every_fitness ./ transpose(fitness_average);
y1 = fitness_average;
z = best_fitness_group;


% set(gca,'YTick',[0:0.1:1]) %改变x轴坐标间隔显示 这里间隔为2xis
figure(1)
subplot(2,2,1);
plot(x,y); % !fuck, I should write the plot before axis!! Instead, you will see an incomplete graph
% axis([0 generation_size 0.2 1.2]); % should after the ploy command
title('每次进化的最佳适应度/平均适应度')
xlabel('进化次数')

subplot(2,2,3);
plot(x,y1); % !fuck, I should write the plot before axis!! Instead, you will see an incomplete graph
% axis([0 generation_size 0.2 1.2]); % should after the ploy command
title('每次进化的平均适应度')
xlabel('进化次数')

subplot(2,2,2);
plot(x,z); % !fuck, I should write the plot before axis!! Instead, you will see an incomplete graph
set(gca,'XTick',[0:30:generation_size]); % should after the ploy command
title('进化过程最佳适应度')
xlabel('进化次数')