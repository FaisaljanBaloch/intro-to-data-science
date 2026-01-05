% firms dataset file path
filepath = "Firm.xlsx";

% import
Firms = readtable(filepath, "Sheet", "data", ReadRowNames=true);

% firms surname starts with CAS
boo = startsWith(Firms.Surname, "CAS");
subset1 = Firms(boo, :);

% firms name ends with LA
boo = endsWith(Firms.Name, "LA");
subset2 = Firms(boo, :);

% firms with names starts with R and ends with O
boo1 = startsWith(Firms.Name, 'R');
boo2 = endsWith(Firms.Name, 'O');
boo = boo1 & boo2;
subset3 = Firms(boo, :);

%% Data Visualization
% A scatter plot to visualize the relationship of Wage wrt Seniority

X=Firms.Seniority;
Y=Firms.Wage;

scatter(X, Y, "blue", "filled"); % Very exploratory for regression problems