K = magic(2); % Generates a matrix of size 2x2

rowNames = {'Girls', 'Boys'};

columnNames = {'HighSchool', 'University'};

Ktable = array2table(K, "RowNames",rowNames, "VariableNames", columnNames);

%% loading saved data
load citiesItaly.mat

CIT = citiesItaly(end:-1:1, end:-1:1);

CIT2 = citiesItaly + CIT;

disp(citiesItaly([1, 3, end-2, end], :));
disp(CIT([1, 3, end-2, end], :));
disp(CIT2([1, 3, end-2, end], :))