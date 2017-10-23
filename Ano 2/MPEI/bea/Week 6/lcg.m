function y = lcg(X0, a, c, m, N)
    y = zeros(N, 1);
    y(1) = rem(a*X0+c, m);
    for i=2:N
        y(i) = rem(a*y(i-1)+c, m);
    end
    y = y./m;
end