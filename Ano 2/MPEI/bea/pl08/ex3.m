%% 3. Crie uma matriz de transicao para uma cadeia de 20 estados gerando os
% elementos dessa matriz com a ajuda da funcao rand(). Com base nessa matriz:

%% (a) Qual a probabilidade de o sistema fazer uma transicao entre o primeiro
% e o ultimo estado em 20 transicoes? E em 40? E em 100?

T = rand(20, 20);
% normalize T's columns (T must be a stochastic matrix)
for i=1:20
    T(:, i) = T(:, i) / sum(T(:, i));
end

I_0 = zeros(20,1);
I_0(1) = 1;

% 20 transitions
after_20_trans = T^20 * I_0;
fprintf('Probability of transitioning between the first and last state in 20 transitions: %f\n', after_20_trans(20))
% 40 transitions
after_40_trans = T^40 * I_0;
fprintf('Probability of transitioning between the first and last state in 20 transitions: %f\n', after_40_trans(20))
% 100 transitions
after_100_trans = T^100 * I_0;
fprintf('Probability of transitioning between the first and last state in 20 transitions: %f\n', after_100_trans(20))