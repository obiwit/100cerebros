% Beatriz Borges, 79857 | Pedro Teixeira, 84715

% 8. Verifique se a funcao f(x) = (x + 5) = 30 pode representar a funçāo
% de probabilidade de uma variavel aleatória que só possa tomar os valores
% 1, 2, 3 e 4.

% Function f can represent the probability mass function of the random
% variable if the sum of all probabilities defined by the function is 1 and
% if all probabilities defined by the function are greater or equal to 0
% and smaller or equal to 1

% X Values
x = [1:4];

% Get probabilities for each x, using f(x)
fx = (x+5)./30;

% Verifies whether the function f can represent the probability mass function 
% of the random variable. f represents the pmf when 
% sum(f) = 1 and all probabilities between [0,1])
if (min(fx) >= 0 && max(fx) <= 1 && sum(fx) == 1)
    fprintf('The function f(x) = (x + 5) / 30 can represent the random variable with the values 1, 2, 3 and 4. \n')
else 
    fprintf('The function f(x) = (x + 5) / 30 can not represent the random variable with the values 1, 2, 3 and 4. \n')
end



    
    
     
    