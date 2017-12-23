%% 5. Crie uma funcao que gere um vector de numeros com uma distribuicao
% discreta generica definida pela sua funcao de massa de probabilidade (FMP).
% A sua funcao deve receber como parametros de entrada dois vectores
% definindo a FMP, xi e pX, assim como o numero de valores a gerar. 
% Utilize o histograma e a estimativa das probabilidades com base num vector
% gerado para testar o seu funcionamento. Sugere-se que para o primeiro
% teste se use uma FMP de um dado nada honesto em que a probabilidade de
% sair 6 e bem maior do que a probabilidade de sairem as outras faces, nao
% existindo diferencas de probabilidade entre as outras faces.

figure;
subplot(1, 2, 1);
tic
hist(pmfLCG([1, 2, 3, 4, 5, 6], [0.1,0.1,0.1,0.1,0.1,0.5], 1e6));
toc

subplot(1, 2, 2);
tic
hist(alternativePMFlcg([1, 2, 3, 4, 5, 6], [0.1,0.1,0.1,0.1,0.1,0.5], 1e6));
toc