% 设置遗传算法的参数，测试效果
% 设定求解精度为小数点后4位

function main()
global x1upper_bound;        % x1's maximum
global x1lower_bound;        % x1's minimum

global x2upper_bound;        % x2's maximum
global x2lower_bound;        % x2's minimum
global every_fitness;
population_size = 1000;      % group size
chromosome_size = 36;       % length of gene
x1chromosome_size = 18;     % the chromosome combine x1 and x2
generation_size = 250;       % max generation times
cross_rate = 0.8;            % mutation probablity
mutate_rate = 0.4;           % mutation probablity

x1upper_bound = 10.0000;       % x1's maximum
x1lower_bound = -10.0000;      % x1's minimum

x2upper_bound = 10.0000;       
x2lower_bound = -10.0000;      


[~,~,iterations,x1,x2] = genetic_algorithm(x1chromosome_size,population_size, chromosome_size, generation_size, cross_rate, mutate_rate);

plotGA(generation_size)

fprintf('x1 = %f\nx2 = %f\n',x1,x2);
fprintf('best result appears in the %dth iteration\n',iterations);
