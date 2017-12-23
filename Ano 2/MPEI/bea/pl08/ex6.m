%% 6. Considere o seguinte conjunto de paginas web ligadas entre si:

%% (a) Escreva a matriz de transicao H (de Hyperlinks), com Hji sendo a
% probabilidade de ir da pagina i para a pagina j num unico passo. Crie em
% Matlab/Octave essa matriz.

H = [ 0.8    0.0    0.3    0.0; ...
      0.2    0.9    0.2    0.0; ...
      0.0    0.1    0.4    0.0; ...
      0.0    0.0    0.1    1.0];

%% (b) Qual a probabilidade de, comecando na pagina 1, ao fim de 1000 passos
% estar na pagina 2? Estava a espera deste valor?

prob_1000_trans = H^1000 * [1; 0; 0; 0];

fprintf('(b) Probability of being in page 2 after 1000 transitions: %f\n', prob_1000_trans(2));

% Estava a espera deste valor? (prob = 0.000005)
% Sim, uma vez que o estado 4 é absorvente.


%% (c) Determine a probabilidade de chegar a pagina j a partir da pagina i,
% em 1, 2, 10 e 100 passos.

prob_1_trans = zeros(4, 4);
prob_2_trans = zeros(4, 4);
prob_100_trans = zeros(4, 4);

for i=1:4
    
    I_0 = [1;2;3;4] == i;
    
    aux = H^1 * I_0;
    prob_1_trans(:,i) = aux(:);
    
    aux = H^2 * I_0;
    prob_2_trans(:,i) = aux(:);
    
    aux = H^100 * I_0;
    prob_100_trans(:,i) = aux(:);
end

for i=1:4
    fprintf('Starting from state %d\n', i)
    for j=1:4
        fprintf('\tProbability of being in state %d after  1  transition:  %f\n', j, prob_1_trans(j,i))
        fprintf('\tProbability of being in state %d after  2  transitions: %f\n', j, prob_2_trans(j,i))
        fprintf('\tProbability of being in state %d after 100 transitions: %f\n\n', j, prob_100_trans(j,i))
    end
end

%% (d) Determine a matriz Q.
%Q = [ 0.8    0.0    0.3; ...
%      0.2    0.9    0.2; ...
%      0.0    0.1    0.4];
Q = H(1:3,1:3);

%% (e) Determine a matriz fundamental F.
n = size(Q, 1);
F = inv(eye(n) - Q);

%% (f) Qual a media (valor esperado) do numero de passos necessarios para
% atingir a pagina 4 comecando na pagina 1? E se comecarmos na pagina 2?
% E se iniciarmos na pagina 3?
meanOfIterations = sum(F);

fprintf('(f) Average transitions to reach state 4 after starting in state 1: %f transitions\n', meanOfIterations(1));
fprintf('(f) Average transitions to reach state 4 after starting in state 2: %f transitions\n', meanOfIterations(2));
fprintf('(f) Average transitions to reach state 4 after starting in state 3: %f transitions\n\n', meanOfIterations(3));

%% (g) Qual o tempo ate a absorcao das paginas 1 a 3?

fprintf('(g) (Average) time for state 1 to be absorved (to reach state 4): %f (transitions)\n', meanOfIterations(1));
fprintf('(g) (Average) time for state 2 to be absorved (to reach state 4): %f (transitions)\n', meanOfIterations(2));
fprintf('(g) (Average) time for state 3 to be absorved (to reach state 4): %f (transitions)\n\n', meanOfIterations(3));


%% (h) Modifique a matriz H para aumentar esse tempo (ate a absorcao) e
% recalcule Q, F e o tempo ate a absorcao.

NewH = [ 0.8    0.1    0.5    0.0; ...
         0.2    0.8    0.25   0.0; ...
         0.0    0.1    0.2    0.0; ...
         0.0    0.0    0.05   1.0];
     
NewQ = NewH(1:3,1:3);
NewF = inv(eye(3) - NewQ);
meanOfIterations = sum(NewF);

fprintf('(h) New (average) time for state 1 to be absorved (to reach state 4): %f (transitions)\n', meanOfIterations(1));
fprintf('(h) New (average) time for state 2 to be absorved (to reach state 4): %f (transitions)\n', meanOfIterations(2));
fprintf('(h) New (average) time for state 3 to be absorved (to reach state 4): %f (transitions)\n\n', meanOfIterations(3));

%% (i) Confirme os valores dos pontos anteriores atraves de simulacao (faca
% a media de varias simulacoes). Use o codigo Octave no verso como base
% para criar a suas simulacoes.

% an example state transition matrix (page 3 is absorving)
H = [ 0.8    0.0    0.3    0.0; ...
      0.2    0.9    0.2    0.0; ...
      0.0    0.1    0.4    0.0; ...
      0.0    0.0    0.1    1.0];
  
% the fundamental matrix
transientStatesNum = 3;
Q = H(1:transientStatesNum, 1:transientStatesNum);
F = inv(eye(transientStatesNum)-Q);

% get experimental number of transitions - starting from state 1
averageTransState = zeros(3,1);
expIterations = 5000;

tic
for i=1:expIterations
    for j=1:transientStatesNum
        averageTransState(j) = averageTransState(j) + crawl_length(H, j, 4);
    end
end
toc

averageTransState = averageTransState / expIterations;

fprintf('(i) Experimental (average) time for state 1 to be absorved (to reach state 4): %f (transitions)\n', averageTransState(1));
fprintf('(i) Experimental (average) time for state 2 to be absorved (to reach state 4): %f (transitions)\n', averageTransState(2));
fprintf('(i) Experimental (average) time for state 3 to be absorved (to reach state 4): %f (transitions)\n', averageTransState(3));


%% (extra) if state 2 was absorvent, how likely would it be to end in state
% % 2 instead of state 4?

% H = [ 0.8    0.3    0.0    0.0; ...
%       0.0    0.4    0.0    0.0; ...
%       0.2    0.2    1.0    0.0; ...
%       0.0    0.1    0.0    1.0];
  
% H^100 * [0.5; 0.5; 0; 0]

% Q = H(1:2, 1:2);
% F = inv(eye(2) - Q);

% R = H(3:4, 1:2);
% R*F