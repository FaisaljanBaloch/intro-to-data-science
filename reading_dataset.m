% firms dataset file path
filepath = "..\DSwithMATLAB\matlabfilesuk\ch1Introduction\Firm.xlsx";

% import
Firms = readtable(filepath, "Sheet", "data");

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
