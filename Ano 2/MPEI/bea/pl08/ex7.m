%% 7. Tres amigos, a Ana, o Bernardo e a Catarina, resolveram trocar
% dinheiro entre si uma vez por dia durante um ano da seguinte maneira: A
% Ana da 20% do que tem ao Bernardo e fica com o resto para si. O Bernardo
% da 10% do que tem a Ana, da 30% do que tem a Catarina e fica com o resto
% para si. A Catarina da 5% do que tem a Ana, da 20% do que tem ao Bernardo
% e fica com o resto para si. O dinheiro e transferido electronicamente,
% sem arredondamento, as 23h59m de cada dia e e creditado na conta de cada
% um no inicio do dia seguinte.
% Sabendo que as 12h do dia 1 de Janeiro de 2015 a Ana tinha 100 euros, que
% o Bernardo tinha 200 euros e que a Catarina tinha 30 euros, responda as
% seguintes questoes:

%% (a) As 12h do dia 4 de Janeiro, quanto dinheiro tinha cada um dos amigos?

% Initial money the 3 friends has (Ana, Bernardo, Catarina)
initialMoney = [100; 200; 30];

% Money "flow" matrix between the 3 friends (Ana, Bernardo, Catarina)
T = [ 0.8   0.1   0.05; ...
      0.2   0.6   0.20; ...
      0.0   0.3   0.75];
  
moneyAfter3Trans = T^3 * initialMoney;

fprintf('(a) Ana''s       money after 3 transitions: $%4.2f\n', moneyAfter3Trans(1));
fprintf('(a) Bernardos''s money after 3 transitions: $%4.2f\n', moneyAfter3Trans(2));
fprintf('(a) Catarina''s  money after 3 transitions: $%4.2f\n\n', moneyAfter3Trans(3));


%% (b) Logo depois da passagem de ano para o ano de 2016, com quanto dinheiro
% vai ficar cada um dos amigos?
moneyAfter365Trans = T^365 * initialMoney;

fprintf('(b) Ana''s       money after 1 year (365 transitions): $%4.2f\n', moneyAfter365Trans(1));
fprintf('(b) Bernardos''s money after 1 year (365 transitions): $%4.2f\n', moneyAfter365Trans(2));
fprintf('(b) Catarina''s  money after 1 year (365 transitions): $%4.2f\n\n', moneyAfter365Trans(3));

%% (c) Em que dia, no formato dia do mes e mes, passa a Catarina a ter mais
% de 130 euros?
n = 1;
moneyAfterNTrans = T * initialMoney;
while(1) 
    n = n + 1;
    moneyAfterNTrans = T * moneyAfterNTrans;
    
    if(moneyAfterNTrans(3) > 130)
        break;
    end
end
fprintf('(c) Catarina will have more than $130 after %d transitions.\n', n);
[month, day] = date_from_days(n+1);
fprintf('(c) That is, she will have $%4.2f on %s %dth.\n', moneyAfterNTrans(3), month, day);