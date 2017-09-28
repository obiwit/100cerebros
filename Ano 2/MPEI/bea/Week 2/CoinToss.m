% PL02 - Ex 2

N= 1e7;  % numero de experiencias 
p = 0.5; % probabilidade de cara 
k = 10;   % numero de caras
n = 10;  % numero de lancamentos 

%% probability of exaclty 10 heads, in 10 tosses
lancamentos = rand(n,N) < p; 
numTenHeads = sum(lancamentos)==k;
probTenHeads = sum(numTenHeads)/N

%% probability of 11th toss being a head if the first 10 tosses were heads
n = 11;
lancamentos = rand(n,N) < p; 
firstTenThrows = lancamentos(1:10,:);
numTenHeads = sum(firstTenThrows)==10; % 10 heads in first 10 throws
numElevenHeads = sum(lancamentos)==11; % 11 heads total
prob = sum(numElevenHeads)/sum(numTenHeads)

%% theorical probability
k = 10;  % caras
n = 10;  % lancamentos 

theoricTenHeadsProb = factorial(n)/(factorial(n-k)*factorial(k))*p^k*(1-p)^(n-k)

k = 11;
n = 11;
% theoricTenHeadsProb = (1/2)^10; % = (1/2)^11 + (1/2)^10*(1/2) 
% not needed because we already calculated it above
theoricElevenHeadsProb = factorial(n)/(factorial(n-k)*factorial(k))*p^k*(1-p)^(n-k);
theoricProb = theoricElevenHeadsProb/theoricTenHeadsProb