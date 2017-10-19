%%    Considere a variavel aleatoria X correspondente à face que fica visível no lançamento de 1 dado:
% (a) Efectue em Matlab/Octave um gráfico representativo da função de massa de probabilidade de X.
%     Não se esqueça de ter os valores adequados no eixo dos xx;

% x can assume values between 1 and 6
N = 1e6;        % Number of experiences
numFaces = 6;

experiences = ceil (numFaces * rand(1, N));         % Each column/experience has 1 line, with a number from 1 to 6 representating the visible face 

p = histc(experiences, 1:numFaces) / N;

subplot(2,1,1)
stem(p)
ylabel('P(X=xi)')
xlabel('xi')
title('Probability Mass Function (PMF) of Random Variable X');
grid on

% (b) Num segundo gráfico, na mesma figura, desenhe o gráfico da função de distribuição acumulada.
probabilityAcumlated = cumsum(p);
subplot(2,1,2)
stairs(0:numFaces+1, [0 probabilityAcumlated 1])
ylabel('P(X<=xi)')
xlabel('xi')
title('Cumulative Distribution Function (CDF) of Random Variable X');
grid on