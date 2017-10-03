%% Alínea a: sair sequência de 10 caras
fprintf('\n------------------------------------\nAlínea 2a: Valor por simulação: ')
disp(Simul(1e5, 0.5, 10, 10))
fprintf('           Valor teórico: ')
disp(Theoric(0.5, 10, 10))

%% Alínea b: sair cara no proximo lancamento, o decimo-primeiro

fprintf('\n------------------------------------\nAlínea 2b: Valor por simulação: ')
lancamentos     = rand(11,1e5) > 0.5;    
sucessos10Caras = sum(lancamentos(1:10,:)) == 10;
sucessso11Caras = sum(lancamentos) == 11;
prob = sum(sucessso11Caras) / sum(sucessos10Caras);
disp(prob)

fprintf('           Valor teórico: ')
disp(Theoric(0.5, 11, 11) / Theoric(0.5, 10, 10))
