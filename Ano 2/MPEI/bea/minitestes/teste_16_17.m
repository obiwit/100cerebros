clear all
close all
clc

%% 1

% 1 a)
T = [0.9    0.5    0.5; ...
     0.09   0.4    0.4; ...
     0.01   0.1    0.1];
 
i0 = [0 0 1]';
 
% 1 b)
probs = T^3 * i0;
fprintf("1 b)\n")
disp(probs)

% 1 c)
current_T = T;
next_T = T*T;
A = abs(current_T - next_T);
while max(A(:)) > 1e-3
    current_T = next_T; 
    next_T = next_T * T;
    A = abs(current_T - next_T);
end
fprintf("1 c)\n")
disp(current_T*i0)

%% 2

% 2 a)
N = 5;
H = [ 0   1/2  1/3  1/4    0; ...
     1/2   0    0   1/4  1/2; ...
     1/2  1/2  1/3  1/4    0; ...
      0    0    0    0   1/2; ...
      0    0   1/3  1/4    0];
  
One_over_N = ones(N, N)/N;
  
beta = 0.8;
  
A = beta*H + (1-beta)*One_over_N;

% 2 b)

rank = ones(N,1)/N; % = rank_0

for i=1:10
    rank = A*rank;
end
fprintf("2 b)\n")
disp(rank)

%% 3

% 3 a)
T = [0.7  0.2   0   0.1   0     0; ...
     0.2   0   0.6  0.2   0     0; ...
      0   0.3  0.3  0.3  0.1    0; ...
      0    0    0   0.1  0.5  0.4; ...
      0    0    0    0    1     0; ...
      0    0    0    0    0     1];
  
% 3 b)
i0 = [1 0 0 0 0 0];

p10 = i0*T^9;
p15 = i0*T^14;

fprintf("3 b)\n")
disp(p10(3))
disp(p15(4))

% 3 c)
Q = T(1:4, 1:4)';
F = inv(eye(size(Q)) - Q);
expected_chars = sum(F);
fprintf("3 c)\n")
fprintf("Média: %f carateres\n", expected_chars(3))
