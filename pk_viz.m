clear all;clc;close all;

pkdata=readtable("Data.csv");


groups=unique(pkdata.Group);
figure();
for ginx=1:length(groups)
    subplot(3,3,ginx);
    rows=pkdata.Group==groups(ginx);
    scatter(pkdata.Time_days(rows),pkdata.Conc_ngml(rows));
    title(strcat("Group name: ", num2str(groups(ginx))));
end
    