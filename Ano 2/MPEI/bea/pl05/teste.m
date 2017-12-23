% alfabeto simples 
% completar com outros caracteres 
alpha = ['A':'Z', 'À', 'Á', 'Â', 'Ã', 'Ç', 'É', 'Ê', 'Í', 'Ó', 'Ô', 'Õ', ...
    'Ú', 'a':'z', 'à', 'á', 'â', 'ã', 'ç', 'é', 'ê', 'í', 'ó', 'ô', 'õ', 'ú'];  

%  ficheiros a serem processados (do projecto Gutemberg
ficheiros={'pg21209.txt','pg26017.txt'};

% obter fun��o massa de probabilidade (pmf em Ingl�s)
pmfPT=pmfLetrasPT(ficheiros,alpha);

%  visualizar fun��o massa de probabilidade
stem(pmfPT)
