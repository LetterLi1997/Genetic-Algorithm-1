function selection(population_size,chromosome_size,elitism)
global population;      % ǰ����Ⱥ
<<<<<<< HEAD
global population_new;  % ��һ����Ⱥ
% global fitness_sum;   % ��Ⱥ������Ӧ��

posibility_table = zeros(population_size);
for i = 1:population_size
    posibility_table(i) = (population_size-i)/population_size;
end

%���̶�ѡ�񷽷�
%ѡ����ʺ͸���������йأ��������������i������N�����壬��ѡ�еĸ�����(N-i)/N
for i=1:population_size
    r = rand;  % ����һ�����������[0,1]֮��
    first = 1;
    last = population_size;
    mid = round((last+first)/2);
    idx = -1;
    
    % ���з�ѡ�����
    while (first <= last) && (idx == -1) 
        if r < posibility_table(mid)
            first = mid;
        elseif r > posibility_table(mid)
            last = mid;     
        else
            idx = mid;
            break;
        end
        mid = round((last+first)/2);
        if (last - first) == 1
            idx = last;
            break;
        end
    end
   
   % ������һ������
   for j=1:chromosome_size
        population_new(i,j) = population(idx,j);
   end
end

=======
% global population_new;  % ��һ����Ⱥ
% global fitness_sum;   % ��Ⱥ������Ӧ��


half_of_population_size = population_size/2;
for i = half_of_population_size+1:population_size
   % ������һ������
   for j=1:chromosome_size
        population(i,j) = population(i-half_of_population_size,j);
   end
end

%���̶�ѡ�񷽷�
% for i=1:population_size
%     r = rand * fitness_sum(population_size);  % ����һ�����������[0,����Ӧ��]֮��
%     first = 1;
%     last = population_size;
%     mid = round((last+first)/2);
%     idx = -1;
%     
%     % ���з�ѡ�����
%     while (first <= last) && (idx == -1) 
%         if r < fitness_sum(mid)
%             first = mid;
%         elseif r > fitness_sum(mid)
%             last = mid;     
%         else
%             idx = mid;
%             break;
%         end
%         mid = round((last+first)/2);
%         if (last - first) == 1
%             idx = last;
%             break;
%         end
%     end
%    
%    % ������һ������
%    for j=1:chromosome_size
%         population_new(i,j) = population(idx,j);
%    end
% end

>>>>>>> c9460b7a203120ee7eeda06dae3540203108a967
%  �Ƿ�Ӣѡ��
% if elitism
%     p = 2;
% else
%     p = 1;
% end

% for i=p:population_size
%    for j=1:chromosome_size
%        % �����Ӣѡ�񣬽�population�к�population_size-1��������£���һ�����Ÿ��屣��
%        population(i,j) = population_new(i,j);
%    end
% end

clear i;
clear j;
clear population_new;
clear first;
clear last;
clear idx;
clear mid;