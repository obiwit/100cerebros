% Estima a probabilidade de uma experiência de Bernoulli por simulação.
% N : número de experiências
% p : probabilidade de sucesso
% k : número de sucessos
% n : número de lançamentos

% No exercício das moedas:
% p : probabilidade de cara
% k : numero de caras
% n : numero de lançamentos

%% Alínea a)
p = 0.5;
N = 1e5;
k = 1;
n = 2;

fprintf('\n-----------------------\nAlínea a: Valor por simulação: ')
disp(Simul(1e5, 0.5, 1, 2) + Simul(1e5, 0.5, 2, 2))
% ou 
% filhos = rand(n, N) > 0.5
% res = sum(filhos) >= 1
% prob = sum(res)/N
fprintf('\nValor teórico: ')
disp(Theoric(0.5, 1, 2) + Theoric(0.5, 2, 2))

%% Alínea c)

filhos = rand(n, N) > 0.5;
res1 = sum(filhos) == 2;
res2 = sum(filhos) >= 1;
probB = sum(res1) / sum(res2);

fprintf('\n-----------------------\nAlínea c: Valor por simulação: ')
disp(probB)

%% Alínea d)

filhos = rand(n, N) > 0.5;
res1 = sum(filhos) == 2;
res2 = filhos(1,:);
probC = sum(res1) / sum(res2);

fprintf('\n-----------------------\nAlínea d: Valor por simulação: ')
disp(probC)

%% Alínea e)

filhos = rand(5, N) > 0.5;
res1 = sum(filhos) >= 1;
res2 = filhos(1,:);
probE = sum(res1) / sum(res2);
fprintf('\n-----------------------\nAlínea e: Valor por simulação: ')
disp(probE)
