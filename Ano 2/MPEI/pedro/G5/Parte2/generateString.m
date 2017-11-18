% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Guião 5 :  Segunda e terceira versões
% Métodos Probabilísticos para Engenharia Informática
% Pedro Teixeira, 84715, MIECT
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Funcao que gere uma chave (string) com comprimento aleatorio entre min e max assumindo
% uma distribuicao uniforme (discreta) e em que as letras (matriz letters) sao equiprovaveis.

function [ str ] = generateString (averageValue, variance, letters, distLettersPT)
length = averageValue + (sqrt(variance)* randn());         % tamanho das chaves segue uma distribuicao normal (com media 10 e variancia 5)
str = '';   
for i=1:  length
    letterIndex = find(distLettersPT > rand());
    str(i) = letters(letterIndex(1));
end

end

