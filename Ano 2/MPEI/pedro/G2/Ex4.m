% 4. Considere o seguinte “jogo”: lançamento com os olhos vendados de n =
% 20 dardos, um de cada vez, para m = 100 alvos, garantindo-se que cada
% dardo atinge sempre um alvo (e apenas 1). 

%% a) Qual a probabilidade de nenhum alvo ter sido atingido mais do que uma vez? 
% m = 100
% n = 20

N = 1e5;
experience = ceil(100 * rand (20, N));             % Columns have the number of the target the darts hit
successes  = 0;

parfor j = 1:  N                                   % For each experience
    if (length (unique(experience(:,j))) == 20)    % if all numbers are different, ie all targets were hit only once (not hit twice or more)
        successes =  successes + 1;                % it's a success
    end
end

probA = successes / N

%% b) Qual a probabilidade de pelo menos 1 alvo ter sido atingido 2 (ou mais) vezes?
% m = 100
% n = 20

N = 1e5;
experience = ceil(100 * rand (20, N));             % Columns have the number of the target the darts hit
successes  = 0;

parfor j = 1:  N                                   % For each experience
    if (length (unique(experience(:,j))) ~= 20)    % if at least 1 number is different, ie at least 1 target were hit at least twice
        successes =  successes + 1;                % it's a success
    end
end

probB = successes / N


%% c) Faça gráficos da variação em função de n do valor da probabilidade da alínea b). 
%     Considere para m = 1000; 10000; 100000; 1000000 e para cada valor de m valores de n entre e 1 e 100, 
%     com incremento de 10. Os 4 gráficos devem ser sub-gráficos de uma mesma figura. 

% (Code not optimized)
m = 1000;
N = 1e5;
nValues = 1:10;
prob = zeros(1,10);
i = 1;

for n = 1 : length(nValues)
    experience = ceil(m * rand (n, N));                % Columns have the number of the target the darts hit
    successes  = 0;

    parfor j = 1:  N                                   % For each experience
        if (length (unique(experience(:,j))) ~= n)     % if at least 1 number is different, ie at least 1 target were hit at least twice
            successes =  successes + 1;                % it's a success
        end
    end
    
    prob(i) = successes / N;
    
    n = n + 10;
    i = i + 1;
end

figure
subplot(2,2,1)
plot(nValues, prob)  
xlabel('n')
ylabel('P(n)')
title('Probabilities for m = 1000')


%% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
m = 10000;
N = 1e5;
nValues = 1:10;
prob = zeros(1,10);
i = 1;

for n = 1 : length(nValues)
    experience = ceil(m * rand (n, N));                % Columns have the number of the target the darts hit
    successes  = 0;

    parfor j = 1:  N                                   % For each experience
        if (length (unique(experience(:,j))) ~= n)     % if at least 1 number is different, ie at least 1 target were hit at least twice
            successes =  successes + 1;                % it's a success
        end
    end
    
    prob(i) = successes / N;
    
    n = n + 10;
    i = i + 1;
end

subplot(2,2,2)
plot(nValues, prob)  
xlabel('n')
ylabel('P(n)')
title('Probabilities for m = 10000')


%% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
m = 100000;
N = 1e5;
nValues = 1:10;
prob = zeros(1,10);
i = 1;

for n = 1 : length(nValues)
    experience = ceil(m * rand (n, N));                % Columns have the number of the target the darts hit
    successes  = 0;

    parfor j = 1:  N                                   % For each experience
        if (length (unique(experience(:,j))) ~= n)     % if at least 1 number is different, ie at least 1 target were hit at least twice
            successes =  successes + 1;                % it's a success
        end
    end
    
    prob(i) = successes / N;
    
    n = n + 10;
    i = i + 1;
end

subplot(2,2,3)
plot(nValues, prob)  
xlabel('n')
ylabel('P(n)')
title('Probabilities for m = 100000')


% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
m = 1000000;
N = 1e5;
nValues = 1:10;
prob = zeros(1,10);
i = 1;

for n = 1 : length(nValues)
    experience = ceil(m * rand (n, N));                % Columns have the number of the target the darts hit
    successes  = 0;

    parfor j = 1:  N                                   % For each experience
        if (length (unique(experience(:,j))) ~= n)     % if at least 1 number is different, ie at least 1 target were hit at least twice
            successes =  successes + 1;                % it's a success
        end
    end
    
    prob(i) = successes / N;
    
    n = n + 10;
    i = i + 1;
end

subplot(2,2,4)
plot(nValues, prob)  
xlabel('n')
ylabel('P(n)')
title('Probabilities for m = 1000000')

%% d) Faça um gráfico similar em função de m, fixando n em 100.
N = 1e5;           % number of experiences 
n = 100;           % number of darts (fixed at 100)
prob = zeros(1,5); % 5 possible values for m
m = 100;           % initial value for m
i = 1;

while m < 100000
    experience = ceil(m * rand (n, N));                % Columns have the number of the target the darts hit
    successes  = 0;

    parfor j = 1:  N                                   % For each experience
        if (length (unique(experience(:,j))) ~= n)     % if at least 1 number is different, ie at least 1 target were hit at least twice
            successes =  successes + 1;                % it's a success
        end
    end
    
    prob(i) = successes / N;
    i = i + 1;
    m = m * 10;
end

figure
stem(prob)  
xlabel('m')
ylabel('P(m)')
title('Probabilities for n = 100')



