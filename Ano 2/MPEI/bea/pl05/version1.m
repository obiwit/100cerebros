alphabet = ['a':'z', 'A':'Z'];


n = 1000;
loadFactor = 0.8;
m = n/loadFactor;
djb2_counter = zeros(1,m);
sdbm_counter = zeros(1,m);

figure(1);
    
for i=1:n
    key = generateStr(3,20,alphabet);
    
    djb2_value = rem(string2hash(key), m) + 1; % indices start at 1, not 0
    djb2_counter(djb2_value) = djb2_counter(djb2_value)+1;
    
    sdbm_value = rem(string2hash(key, 'sdbm'), m) + 1; % indices start at 1, not 0
    sdbm_counter(sdbm_value) = sdbm_counter(djb2_value)+1;
    
%     if rem(i,25)==0
%         % djb2
%         subplot(221)
%         bar(djb2_counter)
%         drawnow
%         subplot(222)
%         hist(djb2_counter, 0:9)
%         drawnow
%         % sdbm
%         subplot(223)
%         bar(sdbm_counter, 'r')
%         drawnow
%         subplot(224)
%         hist(sdbm_counter, 0:9, 'r')
%         drawnow
%     end
end

% djb2
subplot(221)
bar(djb2_counter)
title('djb2 - number of strings mapped to each position')

subplot(222)
hist(djb2_counter, 0:9)
title('djb2 - histogram of string in each position')

% sdbm
subplot(223)
bar(sdbm_counter, 'r')
title('sdbm - number of strings mapped to each position')

subplot(224)
hist(sdbm_counter, 0:9, 'r')
title('sdbm - histogram of string in each position')



%%%%%%%%%%% X's PMF, E[X] and Var(X)
fprintf("\n==============================\n========== X's PMF ===========\n==============================\n\n");
counter = histc(djb2_counter, 0:9);
pmf_x = counter/m;
for i=0:7
    fprintf("P(X=%d) = %f\n", i, pmf_x(i+1));
end
figure(2);
stem(0:9, pmf_x);
grid on;
axis([-0.5, 9.5, 0, 1]);
title("X's PMF");
fprintf("\n==============================\n============ E[X] ============\n==============================\n\n");
e_x = sum([0:9].*pmf_x);
fprintf("E[X] = %f\n", e_x);
fprintf("\n==============================\n=========== Var(X) ===========\n==============================\n\n");
e_x2 = sum(([0:9].^2).*pmf_x);
fprintf("Var(X) = %f\n", e_x2 - e_x^2);