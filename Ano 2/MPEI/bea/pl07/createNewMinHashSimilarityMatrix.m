function J = createNewMinHashSimilarityMatrix(u, users)

    Nu = length(users); % Numero de utilizadores
    
    Set = cell(Nu,1); % Usa celulas
    for n = 1:Nu % Para cada utilizador   
        
        % Obtem os filmes de cada um
        ind = find(u(:,1) == users(n));
        
        % E guarda num array. Usa celulas porque cada utilizador tem um numero 
        % diferente de filmes. Se fossem iguais podia ser um array
        Set{n} = [Set{n} u(ind,2)];
    end
    Set{1}
    % get shingles
    
    % apply hash functions
    
    % get min value
    
    % compare minhash to estimate similarity