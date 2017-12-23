%% Considere a seguinte “danca” de grupos: Divide-se uma turma em 3 grupos
% (A, B e C) no inicio do semestre e no final de cada aula efectuam-se os
% seguintes movimentos:
% • 1/3 do grupo A vai para o grupo B e outro 1/3 do grupo A vai para o grupo C;
% • 1/4 do grupo B vai para A e 1/5 de B vai para C
% • Metade do grupo C vai para o grupo B; a outra mantem-se no grupo C.

%% (a) Crie em Matlab a matriz de transicao.
% Confirme que se trata de uma matriz estocastica.

T = [ 1/3    .25    0;   ...
      1/3    .55    1/2; ...
      1/3    .20    1/2];
  
% Confirm it's a stochastic matrix
stochastic = sum(sum(T)) - size(T,1);
fprintf("\nIs T stochastic? %d\n\n", stochastic == 0);
%% (b) Crie o vector relativo ao estado inicial considerando que no total
% temos 90 alunos, o grupo A tem o dobro da soma dos outros dois e os grupos
% B e C tem o mesmo numero de alunos.

I_0 = [1/2; 1/4; 1/4];

%% (c) Quantos elementos integrarao cada grupo no fim da aula 30 considerando
% como estado inicial o definido na alinea anterior?

final_distribution = T^30 * I_0;

fprintf('(c) Number of students in group A: %d\n', round(90*final_distribution(1)))
fprintf('(c) Number of students in group B: %d\n', round(90*final_distribution(2)))
fprintf('(c) Number of students in group C: %d\n\n', round(90*final_distribution(3)))

%% (d) Quantos elementos integrarao cada grupo no fim da aula 30 considerando
% que inicialmente se distribuiram os 90 alunos equitativamente pelos 3 grupos?

I_0 = [1/3; 1/3; 1/3];

final_distribution = T^30 * I_0;

fprintf('(d) Number of students in group A: %d\n', round(90*final_distribution(1)))
fprintf('(d) Number of students in group B: %d\n', round(90*final_distribution(2)))
fprintf('(d) Number of students in group C: %d\n', round(90*final_distribution(3)))
