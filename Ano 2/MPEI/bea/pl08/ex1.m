%% 1. Considere a seguinte situacao e responda as alıneas abaixo:
% Um aluno do primeiro ano de um curso de Engenharia tem todas as semanas 2
% aulas Teorico-Praticas de uma Unidade Curricular X as 9:00, as quartas e
% sextas.
% Todos os dias que tem aulas desta UC, decide se vai a aula ou nao da
% seguinte forma: Se tiver estado presente na aula anterior a probabilidade
% de ir a aula e 70 %; se faltou a anterior, a probabilidade de ir e 80%.
T = [0.7 0.8; 0.3 0.2];

%% (a) Se estiver presente na aula de quarta numa determinada semana, qual
% a probabilidade de estar presente na aula de quarta da semana seguinte?
% Sugestao: Comece por definir a matriz de transicao e o vetor estado
% correspondentes.
I_0 = [1; 0];
next_week_probabilities = T^2 * I_0;

fprintf('(a) Probability of being present: %f\n', next_week_probabilities(1))

%% (b) Se nao estiver presente na aula de quarta numa determinada semana,
% qual a probabilidade de estar presente na aula de quarta da semana
% seguinte?
I_0 = [0; 1];
next_week_probabilities = T^2 * I_0;

fprintf('(b) Probability of being present: %f\n', next_week_probabilities(1))

%% (c) Sabendo que esteve presente na primeira aula, qual a probabilidade
% de estar na ultima aula, assumindo que o semestre tem exactamente 15
% semanas de aulas e nao existem feriados?
I_0 = [1; 0];
last_week_probabilities = T^29 * I_0;

fprintf('(c) Probability of being present: %f\n', last_week_probabilities(1))

%% (d) Represente num grafico a probabilidade de faltar a cada uma das 30
% aulas, assumindo que a probabilidade de estar presente na primeira aula e
% de 85%.
I_0 = [0.85; 0.15];
prob_present = zeros(30,1);
prob_not_present = zeros(30,1);

for i=1:30
    ith_week_probabilities = T^(i-1) * I_0;
    prob_present(i) = ith_week_probabilities(1);
    prob_not_present(i) = ith_week_probabilities(2);
end

figure; 
hold on;
p1 = plot(prob_present);
p2 = plot(prob_not_present);
legend([p1, p2], ["Probability of being present", "Probability of not being present"])
grid on
axis([0 30 0 1])
xlabel('Number of classes')
ylabel('Probability of not going to class')
title('Evolution of going or not to class')