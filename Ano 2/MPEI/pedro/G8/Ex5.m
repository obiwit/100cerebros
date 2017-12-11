% Suponha que observa o estado do tempo uma vez por dia (por exemplo, de manha as 11:00) e que
% considera tres estados poss?veis: sol, nuvens e chuva. Assumindo que o tempo no dia n + 1 apenas
% depende do tempo no dia n e que as probabilidades de transicao sao as da tabela seguinte, responda as
% questoes abaixo:

clc;

% (a) Defina, em Matlab, a correspondente matriz de transicao;
T = [0.7 0.2 0.1; 0.2 0.3 0.5; 0.3 0.3 0.4]'

% (b) Assumindo que a observacao inicial (digamos no dia 0) e que o dia e de sol, qual a probabilidade
% do dia 2 ser de chuva?
X = [1; 0; 0];            % Vector de estado
prob = T^2 * X       % Probabiidades dia 2
fprintf('Probabilidade do dia 2 ser chuva, %f: \n', prob(3))

% (c) Calcule as n primeiras potencias de T (n=20) e apresente num grafico a evolucao dos varios elementos
% da matriz em funcao de n;
values = zeros(9, 20);
for i = 1: 20
        T_exp = T^i;
        if (i > 1 && abs(sum(values(:, i -1)) - sum(values(:, i))) <= 10^-4) 
            break;
        end
        values(:, i) = T_exp(:);            
end
plot(values')       % plot reads each column, but we want to read each line
xlabel('n values')
ylabel('probability for each element')
title('Evolução dos vários elementos da matriz em função de n')

T^20

% (d) Repita o processo da alinea anterior parando-o assim que o maximo do modulo da diferenca entre
% os valores dos elementos da matriz em duas iterac oes consecutivas nao exceda 10 * -4;