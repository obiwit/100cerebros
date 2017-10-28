% Beatriz Borges, 79857 | Pedro Teixeira, 84715

% 11. Considerando a variavel aleatoria X, representativa das classificacoes
% dos alunos de um determinado curso, continua e com distribuicao normal
% (media 14 e desvio padrao 2), obtenha atraves de simulacao uma estimativa
% para as probabilidades de:
% (Sugestao: Utilize a funcao Matlab randn() para gerar numeros aleatorios
% com distribuicao normal.)


N = 1e5; % simulation size

% X ~ N(14, 2)
X = (randn(1, N) .* 2) + 14;

%% (a) um aluno do curso ter uma classificacao entre 12 e 16; 
P = (sum(X >= 12) - sum (X > 16)) /N;

fprintf("Probability of getting a grade between 12 and 16: %f\n", P);


%% (b) os alunos terem classificacoes entre 10 e 18;
P = (sum(X >= 10) - sum (X > 18)) /N;

fprintf("Probability of getting a grade between 10 and 18: %f\n", P);


%% (c) um aluno passar (ter classificacao maior ou igual a 10).
P = (sum(X >= 10)) /N;        	% could subtract grades bigger than 20
                                % [P = (sum(X >= 10) - sum (X > 20)) /N; ]
                                % but would lose normalization and ignore
                                % some grades
fprintf("Probability of getting a grade above 10: %f\n", P);
