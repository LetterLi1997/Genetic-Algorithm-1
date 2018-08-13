function selection(population_size,chromosome_size)
global population;      % ǰ����Ⱥ
global population_new;  % ��һ����Ⱥ

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

population = population_new;


clear i;
clear j;
clear population_new;
clear first;
clear last;
clear idx;
clear mid;