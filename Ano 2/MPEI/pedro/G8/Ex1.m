% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Guião 8 : Ex. 1
% Métodos Probabilísticos para Engenharia Informática
% Pedro Teixeira, 84715, MIECT
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Um aluno do primeiro ano de um curso de Engenharia tem todas as semanas 2 aulas Teorico-Praticas de
% uma Unidade Curricular X as 9:00, as quartas e sextas.
% Todos os dias que tem aulas desta UC, decide se vai a aula ou nao da seguinte forma: Se tiver estado
% presente na aula anterior a probabilidade de ir a aula e 70 %; se faltou a anterior, a probabilidade de ir e 80 %.

%% (a) Se estiver presente na aula de quarta numa determinada semana, qual a probabilidade de estar
% presente na aula de quarta da semana seguinte ?
% Sugestao: Comece por definir a matriz de transicao e o vetor estado correspondentes.

clc;
fprintf('Alínea a:\n')

% Estados : 1 - Não Faltar (Ter ido), 2 - Faltar (não ter ido)
% Matriz de Transição:
%           1    2
%   1    0.7 0.8
%   2    0.3 0.2
%   -----------
%         1.0  1.0

T = [0.7 0.8; 0.3 0.2]         % Matriz de Transição
X_A = [1; 0]                      % Vector estado
probA = T^2 * X_A

% (b) Se nao estiver presente na aula de quarta numa determinada semana, qual a probabilidade de estar
% presente na aula de quarta da semana seguinte ?

fprintf('\n-------------\nAlínea b:\n')
X_B = [0; 1]
probB = T^2 * X_B

% (c) Sabendo que esteve presente na primeira aula, qual a probabilidade de estar na ultima aula, assumindo
% que o semestre tem exactamente 15 semanas de aulas e nao existem feriados?

fprintf('\n-------------\nAlínea c:\n')
X_C = [1; 0]
probC = T^(15*2) * X_C

% (d) Represente num grafico a probabilidade de faltar a cada uma das 30 aulas, assumindo que a probabilidade
% de estar presente na primeira aula e de 85 %.

fprintf('\n-------------\nAlínea d:\n')
X_D = [0.85; 0.15]
probD = zeros(1, 30);
for i = 1: 30
    results = T^ (i) * X_D;
    probD(i) = results(2);
end

probD
% figure(1)
% subplot(1, 2, 1)
% stem(probD, 'r')
% subplot(1, 2, 2)
plot(probD)
grid on
title('Probabilidade de faltar a cada uma das 30 aulas')
