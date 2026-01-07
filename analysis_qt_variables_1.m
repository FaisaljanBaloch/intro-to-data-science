Firms = readtable('Firm.xlsx', ReadRowNames=true);

subplot(1, 2, 1);
boxplot(Firms.Wage);
add2boxplot(Firms(:, "Wage"));
xlabel("Wage");

subplot(1, 2, 2);
boxplot(Firms.Wage, Firms.Gender);
add2boxplot(Firms(:, "Wage"), Firms.Gender);