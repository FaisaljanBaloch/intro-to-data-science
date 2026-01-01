% Firms dataset file path
dataset = '..\DSwithMATLAB\matlabfilesuk\ch1Introduction\Firm.xlsx';

% import
X = readtable(dataset, Sheet="data", ReadRowNames=true);

%% Extract the records whose wage is
% between 2000-3000 and are female
boo1 = X.Wage >= 2000 & X.Wage <= 3000;
boo2 = X.Gender == "F";
boo = boo1 | boo2;

data = X(boo, :);
disp(data);

%% Records of female with education (B level)
% Or male earning higher than 4000

boo3 = X.Gender == "F" & X.Education == "B";

% Whose wage is greater than 4000 Euros
boo4 = X.Wage > 4000;
boo = boo3 | boo4;

data2 = X(boo, :);

disp(data2);