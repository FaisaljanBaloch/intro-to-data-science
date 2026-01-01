load citiesItaly.mat

% List of towns in Italy
towns = string(citiesItaly.Properties.RowNames);

% Unemployment ratios
unemp = citiesItaly.unemploy;

d = dictionary(towns, unemp);

disp(d)