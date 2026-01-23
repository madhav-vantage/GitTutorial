clear all;clc;close all;

pkdata=readtable("Data.csv");


groups=unique(pkdata.Group);
for ginx=1:length(groups)
figure();
    rows=pkdata.Group==groups(ginx);
    scatter(pkdata.Time_days(rows),pkdata.Conc_ngml(rows));
end
    