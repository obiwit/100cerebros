% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Guião 8 : Ex. 4
% Métodos Probabilísticos para Engenharia Informática
% Pedro Teixeira, 84715, MIECT
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clc;

% (a) Defina, em Matlab, a matriz de transicao T. Assuma p = 0.4 e q = 0.6;
p = 0.4
q = 0.6
%        A        B  C D
T = [p^2,      0, 0, q^2; ...                % A
       (1-p)^2, 0, 0, q*(1-q);...           % B
       p*(1-p),  0, 0, q*(1-q);...           % C
       p*(1-p),  1, 1, (1-q)^2]            % D
   
% (b) Qual a probabilidade de o sistema chegar ao estado B apos 10 transicoes adicionais caso inicialmente
% se encontre no estado A ?
% E de chegar a cada um dos outros estados para as mesmas condicoes ?

X = [1; 0; 0; 0]        % Vector estado
prob = T^10 * X
fprintf('Probabilidade de o sistema chegar ao estado A, %f\n', prob(1));
fprintf('Probabilidade de o sistema chegar ao estado B, %f\n', prob(2));
fprintf('Probabilidade de o sistema chegar ao estado C, %f\n', prob(3));
fprintf('Probabilidade de o sistema chegar ao estado D, %f\n', prob(4));

