% Beatriz Borges, 79857 | Pedro Teixeira, 84715

% 7. E conhecido que o numero de mensagens que chega a um computador por
% segundo se comporta de acordo com a lei de Poisson. Suponha que o numero
% de mensagens que chega a um computador segue uma lei de Poisson com media
% 15 (por segundo). Calcule a probabilidade de:

%% (a) o computador nao receber nenhuma mensagem num segundo.

% X ~ Poisson(15)
% P(X = 0) = (15^0)*e^(-15)/0! = e^(-15)

probNoMessages = exp(-15);

disp("Probability of getting no messages in a second: " + probNoMessages);

%% (b) mais de 10 mensagens chegarem ao computador num periodo de um segundo.

% X ~ Poisson(15)
% P(X > 10) = 1 - P (X <= 10) = 1 - SUM[(15^i)*e^(-15)/i!] for i = 0:10

i = 0:10;
p = (15.^i).*exp(-15)./factorial(i);
probAtLeast10Messages = 1 - sum(p);

disp("Probability of getting ten or more messages in a second: " + probAtLeast10Messages);