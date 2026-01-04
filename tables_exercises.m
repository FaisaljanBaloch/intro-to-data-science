%% Table Exercises
% #1 Way: Creating a table for monthly summary
P=[110.63; 736871]; % Purchases
V=[3.7; 12157]; % Visits

rowNames={'Monthly Average', 'Monthly Total'};
variableNames={'Purchases in Euros', 'Number of Visits'};

T=table(P, V, 'VariableNames',variableNames, 'RowNames', rowNames);

disp(T)

% #2 Way: Using array2table function
records = [110.63 3.7; 736871 12157];

T2 = array2table(records, "RowNames",rowNames, "VariableNames",variableNames);

disp(T2)