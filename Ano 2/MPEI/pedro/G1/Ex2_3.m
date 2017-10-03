%% Exercício 2
fprintf('\nExercício 2\n')
probSim_2     = BernoulliSimul(1e5, 0.5, 6, 15)
probTheoric_2 = BernoulliTheoric(0.5, 6, 15)


%% Exercício 3
fprintf('\n-----------------------\nExercício 3\n')
probSim_3     = BernoulliSimul_AtLeast(1e5, 0.5, 6, 15)
probTheoric_3 = BernoulliTheoric_AtLeast(0.5, 6, 15)
