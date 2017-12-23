%% 1) Analise o codigo Matlab disponibilizado conjuntamente com este guiao e
% complete-o por forma a con- seguir calcular a distancia de Jaccard entre
% os conjuntos de filmes avaliados pelos varios utilizadores.
% Inclua no codigo a possibilidade de calcular o tempo que demora cada uma
% das partes (calculo da distancia e determinacao das distancias abaixo de
% um determinado limiar). Veja a informcao relativa atic, toc, cputime, etime.
% No final, o programa deve mostrar informacao com: 
%%% (1) numero de pares de utilizadores com distancias inferiores ao
%       limiar definido;
%%% (2) informacao sobre cada par (utilizadores e distancia).
%
% Adicione, tambem, a capacidade de gravar em ficheiro a matriz de distancias
% calculada. Sugere-se que consulte a informacao de save.

% Utiliza uma versao adaptada do codigo base para guiao PL07 MPEI 2017-2018

close all; clc; clear;

udata=load('u.data');  % Carrega o ficheiro dos dados dos filmes

% Fica apenas com as duas primeiras colunas
u = udata(1:end,1:2); clear udata;

% Lista de utilizadores
users = unique(u(:,1)); % Extrai os IDs dos utilizadores 
Nu = length(users); % Numero de utilizadores

% Constroi a lista de filmes para cada utilizador (se esta nao existe)
if exist('Jmatrix.mat', 'file')
    % Ficheiro existe
    load Jmatrix
    
else
    % Ficheiro nao existe
    fprintf('Creating new similarity matrix...\n');
  
    J = createNewSimilarityMatrix(u, users);
    save Jmatrix J
end

%% Com base na distancia, determina pares com 
%% distancia inferior a um limiar pre-definido
fprintf('Searching for similar pairs...\n');
threshold = 0.4; %limiar de decisao
% Array para guardar pares similares (user1, user2, distancia) 
SimilarUsers= zeros(1,3);
k= 1;
for n1= 1:Nu
    for n2= n1+1:Nu
        if areSimilar(n1, n2, J, threshold)
            SimilarUsers(k,:) = [users(n1) users(n2) J(n1,n2)];
            k = k+1; 
        end
    end
end

SimilarUsers
fprintf('--- %d similar users\n', k-1);