% PL02 - Ex 1

N= 1e7;  % numero de experiencias 
p = 0.5; % probabilidade de cara 
k = 1;   % numero de filhos rapazes
n = 2;  % numero de filhos 

%% at least 1 son
lancamentos = rand(n,N) < p; 
sucessos= sum(lancamentos)>=k; % pelo menos 1 filho
probSimulacao = sum(sucessos)/N;

%% 2 sons if you know you already one son
lancamentos = rand(n,N) < p; 
peloMenosUmFilho = sum(lancamentos)>=1; % pelo menos 1 filho
doisFilhos = sum(lancamentos)==2; % exatamente 2 filhos
probSimulacao = sum(doisFilhos)/sum(peloMenosUmFilho)

%% 2 sons if first one was a son
lancamentos = rand(n,N) < p; 
peloMenosUmFilho = lancamentos(1,:)==1; % sabendo que o primeiro filho e rapaz
doisFilhos = sum(lancamentos)==2; % exatamente 2 filhos rapazes
probSimulacao = sum(doisFilhos)/sum(peloMenosUmFilho);

%% 5 sons
n = 5;

% probability of two sons, if one of them is a son
lancamentos = rand(n,N) < p; 
peloMenosUmFilho = sum(lancamentos)>=1; % pelo menos 1 filho
doisFilhos = sum(lancamentos)==2; % exatamente 2 filhos
probSimulacao = sum(doisFilhos)/sum(peloMenosUmFilho);

% probability of two or more sons, if one of them is a son
lancamentos = rand(n,N) < p; 
peloMenosUmFilho = sum(lancamentos)>=1; % pelo menos 1 filho
peloMenosDoisFilhos = sum(lancamentos)>=2; % exatamente 3 filhos
probSimulacao = sum(peloMenosDoisFilhos)/sum(peloMenosUmFilho);
