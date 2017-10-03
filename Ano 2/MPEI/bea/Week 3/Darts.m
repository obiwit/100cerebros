% Considere o seguinte “jogo”: lancamento com os olhos vendados de n = 20 
% dardos, um de cada vez, para m = 100 alvos, garantindo-se que cada dardo
% atinge sempre um alvo (e apenas 1).

%% a) Qual a probabilidade de nenhum alvo ter sido atingido mais do que uma vez?

% P(hitting specific target) = 20/100 = 2/10;
% 
% probHitAtMostOnce = 1;
% 
% probSubtract = 1;
% 
% for i=1:20
%     probSubtract = probSubtract * factorial(i) * (1/100)^i
% end
% 
% disp(probHitAtMostOnce - probSubtract);

darts = 20;
targetNum = 100;
N = 1e5;

simulation = ceil(targetNum*rand(20, N));

hitMoreThanOnce = 0;

for i=1:N
    hitMoreThanOnce = hitMoreThanOnce + (length(unique(simulation(:,i))) ~= darts);
end

probHitAtMostOnce - hitMoreThanOnce/N

%% b) Qual a probabilidade de pelo menos 1 alvo ter sido atingido 2 (ou mais) vezes?



%% c) Faca graficos da variacao em funcao de n do valor da probabilidade da 
% alınea b). Considere para m = 1000, 10000, 100000, 1000000 e para cada
% valor de m valores de n entre e 1 e 100, com incremento de 10. Os 4
% graficos devem ser sub-graficos de uma mesma figura.



%% d) Faca um grafico similar em funcao de m, fixando n em 100.


