%% 5. Suponha que observa o estado do tempo uma vez por dia (por exemplo,
% de manha as 11:00) e que considera tres estados possiveis: sol, nuvens e
% chuva. Assumindo que o tempo no dia n + 1 apenas depende do tempo no dia
% n e que as probabilidades de transicao sao as da tabela seguinte,
% responda as questoes abaixo:
% dia n \ dia n + 1 →   | sol   nuvens chuva
% sol                   | 0,7   0,2     0,3
% nuvens                | 0,2   0,3     0,3
% chuva                 | 0,1   0,5     0,4

%% (a) Defina, em Matlab, a correspondente matriz de transicao;

%     sol   nuv   chuva
T = [ 0.7   0.2   0.3; ...
      0.2   0.3   0.3; ...
      0.1   0.5   0.4];

%% (b) Assumindo que a observacao inicial (digamos no dia 0) e que o dia e
% de sol, qual a probabilidade do dia 2 ser de chuva ?
I_0 = [1; 0; 0];

day2_weather = T^2 * I_0;

fprintf('(b) Probability of rain on day 2: %f\n', day2_weather(3));

%% (c) Calcule as n primeiras potencias de T (n=20) e apresente num grafico
% a evolucao dos varios elementos da matriz em funcao de n;
n = 20;
T_power = T;

value_evo = zeros(9, n);
value_evo(:,1) = T_power(:);

for i=2:n
    T_power = T_power * T;
    value_evo(:,i) = T_power(:);
end

figure;
plot(value_evo')

%% (d) Repita o processo da alınea anterior parando-o assim que o maximo do
% modulo da diferenca entre os valores dos elementos da matriz em duas
% iteracoes consecutivas nao exceda 10−4;

T_power = T;
prev_T = zeros(3,3);

value_evo = zeros(9, 1);
value_evo(:,1) = T_power(:);

threshold = 10^(-4);
value_evo(:,1) = T_power(:);

for i=2:n
    
    if (sum(sum(abs(T_power - prev_T))) <= threshold) 
        break;
    end
    
    prev_T = T_power;
    T_power = T_power * T;
    value_evo(:,i) = T_power(:);
end

figure;
plot(value_evo')


fprintf('(d) Number of iterations until diference is less than or equal to 10^(-4): %d\n', size(value_evo, 2));
