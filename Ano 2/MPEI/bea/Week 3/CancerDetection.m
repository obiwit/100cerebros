% Consideremos o problema de detecao de cancro da mama. O mamograma (como
% muitas outras analises clinicas) nao e infalivel. Estudos prolongados
% revelam que:
% P["mamograma positivo se cancro da mama"] = 0,9 = P(B|A)
% P["mamograma positivo se NAO tem cancro da mama"] = 0.1 = P(B|Ā)

%% Calcule a probabilidade de uma mulher escolhida ao acaso na populacao
% portuguesa ter cancro sabendo que o seu mamograma deu positivo. Considere
% que a frequencia de ocorrencia de cancro da mama na populacao portuguesa
% feminina e de 1 em 10000.

% P(A|B) = P(AB) / P(B) = 0.00089928057
% A - ter cancro na mama
% B - ter mamograma positivo
% P(A) = 1/10000 = 0.0001
% P(AB) = P(B)*0.9 (dado no enunciado) <=> P(AB) = P(B|A)*P(A) + P(B|Ā)*P(Ā)
% P(B) = 0.0001*0.9+0.9999*0.1 = 0.10008
% P(B) = Sum(P(B|A_i)*P(A_i))

% T - ter cancro
% N - nao ter cancro
% P - mamografia positiva
% p(T|P) = p(P|T) / ( p(P|T)p(T) + p(P|N)p(N) )

pT = 0.0001;
pN = 1 - pT;
pP = 0.9*pT + 0.1*pN;

probCancro = (0.9*pT)/pP;

disp("Prob of Cancer in general population: " + probCancro);



% Simulated probability
N = 1e6;
doente = rand(1,N) < 1/10000;
aux = rand(1,N);
darCancro = ((aux < 0.9) & doente) + ((aux < 0.1) & (1-doente));
simProb = sum(darCancro & doente)/sum(darCancro);

disp("Simulated prob of Cancer in general population: " + simProb);

%% Calcule nova estimativa, mas agora considerando as mulheres que procuram
% a consulta especifica e que para este subgrupo a ocorrencia de cancro
% atinge 1 em 1000.

% T - ter cancro
% N - nao ter cancro
% P - mamografia positiva
% p(T|P) = p(P|T) / ( p(P|T)p(T) + p(P|N)p(N) )

pT = 0.001;
pN = 1 - pT;
pP = 0.9*pT + 0.1*pN;

probCancro = (0.9*pT)/pP;

disp("Prob of Cancer in population sub-group: " + probCancro);
