% PL02 - Ex 6

% Probability of 2, out of n, people sharing their birthday on the
% same day and month. Let's consider a year of 366 days. 


N = 1e5;

n = 1;
sucesses = 0;

while (sucesses / N < 0.5)
    n = n+1;
    
    peopleBirthdays = ceil(366*rand(n, N));

    sucesses = 0;
    for i=1:N
        sucesses = sucesses + (length(unique(peopleBirthdays(:,i)))~=n);
    end
end

disp("Minimum number of people: " + n);


% Theoric formula:  366*365*364*...*(366-n+1)       1
%                 ---------------------------- = ------- * Multiply(366-i+1), i from 1 to n
%                            366^n                366^n