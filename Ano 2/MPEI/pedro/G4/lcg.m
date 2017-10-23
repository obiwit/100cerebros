function [ x ] = lcg( x0, a, c, m, N )

x = zeros(1, N);
for i = 1: N
    x(i) = rem(a*(x0 + c), m);
    x0 = x(i);
end
% x = x/m; % valores normalizados (ie entre 0 e 1)
end

