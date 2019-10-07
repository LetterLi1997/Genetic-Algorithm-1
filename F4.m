function [y] = F1(x1,x2)
% y = 100*(x1^2 -x2)^2 + (1-x1)^2;
y = 20 + x1^2 + x2^2 -10*(cos(2*pi*x1) + cos(2*pi*x2));
end

