% 5. Crie uma funcao que gere um vector de numeros com uma distribuic¸ao discreta generica definida pela
% sua funcao de massa de probabilidade (fmp).
% A sua funcao deve receber como parametros de entrada dois vectores definindo a fmp, xi e pX, assim
% como o numero de valores a gerar.
% Utilize o histograma e a estimativa das probabilidades com base num vector gerado para testar o seu
% funcionamento. Sugere-se que para o primeiro teste se use uma fmp de um dado nada honesto em que
% a probabilidade de sair 6 e bem maior do que a probabilidade de sairem as outras faces, nao existindo
% diferenc¸as de probabilidade entre as outras faces.

x  = [2 4 6 9];
fx = [0.1 0.2 0.4 0.3];
N = 1e4;

ya = generateNumbersFromPmf(x, fx, N);
h = histc(ya, x);
bar(x, h, 'r')
ylabel('Number of occurences according to p(xi)')
xlabel('xi')
% hist(ya, x)