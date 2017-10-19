% Beatriz Borges, 79857 | Pedro Teixeira, 84715

% 10. Sendo a variavel aleatoria X contínua e uniformemente distribuída em
% (0; 10), calcule as probabilidades de:

% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Theorical Probabilities
% (a) X < 3 
% P(0 <= X < 3) = 3 - 0 / 10 - 0
pA = 3/10;

% (b) X > 7
% P(7 <= X < 10) = 10 - 7 / 10 - 0
pB = (10-7)/10; % = 3/10;

% (c) 1 < X < 6
% P(1 < X < 6) = 6 - 1 / 10 - 0
pC = (6-1)/10; % = 1/2;

% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Probabilities by simulation
N = 1e4;
X = 0 + rand(1, N) * (10-0);     % U(10,0). Each column has 1 entry, with x between 0 and 10

% (a) X < 3 
successesA = sum(X < 3);
probA = successesA / N;

% (b) X > 7
successesB = sum(X > 7);
probB = successesB / N;

% (c) 1 < X < 6
successesC = sum(X > 1 & X < 6);
probC = successesC / N;

% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Print probabilities
fprintf('pA : X < 3 \n\tTheoric: %f\n\tSimulation: %f', pA, probA)
fprintf('\npB: X > 7 \n\tTheoric: %f\n\tSimulation: %f', pB, probB)
fprintf('\npC: 1 < X < 6\n\tTheoric: %f\n\tSimulation: %f\n', pC, probC)