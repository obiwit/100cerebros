%% Alínea a

% Valor teórico

% Valor prático
   
i = 3;
n = 1000;
N = 1e5;
continueSearching = 1;

while (continueSearching && i < n)
    experiencia = ceil(365 * rand(i, N));
    successes = 0;
    
    for j = 1:  N
        if (length (unique(experiencia(:,1))) == i)
            successes = successes + 1;
        end
    end
    
    prob = successes / N;
    if (prob > 0.5) 
        continueSearching = 0;
        n = i; 
    end
    
    i = i + 1;
end 

disp (n);

%% Simpler code

N = 1e5;
n = 3;
prob = 0;

while (prob < 0.5)
    n = n + 1;
    experience = ceil(365 * rand(n, N));
    successes = 0;
    
    for j = 1:  N
        if (length (unique(experience(:,j))) ~= n)
            successes =  successes + 1;
        end
    end
    
    prob = successes / N;
end 

disp (n);