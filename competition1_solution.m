%% Importing dataset
file = "Incidenti_con_coordinate.xlsx";

% Read the dataset
data = readtable(file, ReadRowNames=true, Sheet="Sheet 1");
allColumns = data.Properties.VariableNames;

%% Task 1: Total Accidents in Milan throughout the period
boo1 = data.PROV == "Milano";

incColumns = allColumns(startsWith(allColumns, "INC"));
subset1 = data(boo1, incColumns);

% Calculate the total accidents in Milano
totalAccidentsInMilan = sum(subset1, "all");

%% Task 2: Total injuries for Parma and Piacenza in the years 2020, 2021, 2022, and 2023
selectedProvinces = ["Parma", "Piacenza"];
boo2 = data.PROV == "Parma" | data.PROV == "Piacenza";
years = 2020:2023;
boo = startsWith(allColumns, "FER") & endsWith(allColumns, string(years));
ferColumns = allColumns(boo);

subset2 = data(boo2, ["PROV", ferColumns]);