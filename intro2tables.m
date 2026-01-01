K = magic(2); % Generates a matrix of size 2x2

rowNames = {'Girls', 'Boys'};

columnNames = {'HighSchool', 'University'};

Ktable = array2table(K, "RowNames",rowNames, "VariableNames", columnNames);