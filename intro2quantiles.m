F = readtable('Firm.xlsx', ReadRowNames=true);

boo = strcmp(F.Gender, 'M');
quantiles = 0.1:0.05:0.9; % requested quantiles

% Compute quantiles for both genders
qM = quantile(F.Wage(boo), quantiles);
qF = quantile(F.Wage(~boo), quantiles); % Female employees

% Plot the quantiles
plot(quantiles, qM, 'r--*', quantiles, qF, 'b-o');
legend(["Men", "Women"], 'Location','best');