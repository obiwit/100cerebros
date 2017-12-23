function J = createNewSimilarityMatrix(u, users)

    Nu = length(users); % Numero de utilizadores
    
    Set = cell(Nu,1); % Usa celulas
    for n = 1:Nu % Para cada utilizador   
        % Obtem os filmes de cada um
        ind = find(u(:,1) == users(n));
        % E guarda num array. Usa celulas porque cada utilizador tem um numero 
        % diferente de filmes. Se fossem iguais podia ser um array
        Set{n} = [Set{n} u(ind,2)];
    end
    %% Calcula a distancia de Jaccard entre todos os pares pela definicao.
    J = zeros(Nu); %array para guardar distancias 
    h = waitbar(0,'Calculating');
    for n1= 1:Nu
        waitbar(n1/Nu,h);
        for n2= n1+1:Nu
            a = length(intersect(Set{n1}, Set{n2}));
            J(n1,n2) = 1 - a/(length(Set{n1}) + length(Set{n2}) - a);
            %J(n1,n2) = getJaccardDistance(Set{n1}, Set{n2});
        end
    end
    delete (h)