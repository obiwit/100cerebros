% Beatriz Borges, 79857 | Pedro Teixeira, 84715

% 5. Suponha que o(s) motor(es) de um aviao pode(m) falhar com
% probabilidade p e que as falhas sao independentes entre motores. Suponha
% ainda que o aviao se despenha se mais de metade dos motores falharem.
% Utilize a distribuicao que considerar mais adequada.

%% a) Prefere voar num aviao com 2 ou 4 motores?
% Sugestao: Tem pelo menos 2 alternativas: 
%%% (1) obter expressoes para a probabilidade de cada tipo de aviao se
%%%  despenhar em funcao de p e usar o quociente entre ambas para responder
%%%  a questao, 
%%% (2) efectuar os calculos para um conjunto de valores concretos de p
%%%  (ex:p= logspace(-3,log10(1/2),100)) e usar um grafico mostrando
%%%  simultaneamente as probabilidades de cada tipo de aviao se despenhar.

% let p be the engine failure probability
p = linspace(0,1);

% probability of a two engine plane crashing in function of p
% plane crashes if the two engines fail (binomial random variable)
twoEnginesCrashProb = nchoosek(2,2) * p.^2;

% probability of a four engine plane crashing in function of p
% plane crashes if three or four engines fail (binomial random variable)
fourEnginesCrashProb = 0;
for i=3:4 
    fourEnginesCrashProb = fourEnginesCrashProb + nchoosek(4,i) * p.^i .* (1-p).^(4-i);
end

% graphic showing the crash probability
figure(1);
subplot(1, 2, 1);
plot(p,twoEnginesCrashProb, p, fourEnginesCrashProb);
legend('Plane with two engines', 'Plane with four engines');
title('Two and Four Engine Plane Crash Probability');
xlabel('Engine Failure Probability (p)');
ylabel('Plane Crash Probability');

subplot(1, 2, 2);
loglog(p,twoEnginesCrashProb, p,fourEnginesCrashProb);
legend('Plane with two engines', 'Plane with four engines');
title('(Logarithmic) Two and Four Engine Plane Crash Probability');
xlabel('Engine Failure Probability (p)');
ylabel('Plane Crash Probability');