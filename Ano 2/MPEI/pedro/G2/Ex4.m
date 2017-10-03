% 4. Considere o seguinte “jogo”: lançamento com os olhos vendados de n =
% 20 dardos, um de cada vez, para m = 100 alvos, garantindo-se que cada
% dardo atinge sempre um alvo (e apenas 1). 

% a) Qual a probabilidade de nenhum alvo ter sido atingido mais do que uma vez? 

% b) Qual a probabilidade de pelo menos 1 alvo ter sido atingido 2 (ou mais) vezes?

% c) Fac¸a gr´aficos da variac¸ ˜ao em func¸ ˜ao de n do valor da probabilidade da al´?nea b). 
% Considere para m = 1000; 10000; 100000; 1000000 e para cada valor demvalores de n entre e 1 e 100, com incremento
% de 10. Os 4 gr´aficos devem ser sub-gr´aficos de uma mesma figura. 


% d) Faça um gráfico similar em func¸ ˜ao de m, fixando n em 100.


N = 1e5;
experience = 20 * rand (100, N);


%experiencia = rand(N


x = 1:10;
y = x.^2;
z = x.^3;
figure(1)
plot(x,y)
figure(2)
plot(x,z)
figure(3)
title('Hello')
subplot(1,2,1)
plot(x,y)

subplot(1,2,2)

plot(x,z)