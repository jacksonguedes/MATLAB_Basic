clc;
clear all;
close all;
%% Tipos Espec�ficos

y = rand(1,20);
figure
stem(y)%Gr�fico de Pulso
%%
yb = rand(1,18);
figure
bar(yb) %Gr�fico de Barras
%% 
x = [12 48 40];
figure(1)
pie3(x);
labels = {'Taxas','Gastos','Carteiras'};
legend(labels);

figure(2)
labels = {'Taxas','Gastos','Carteiras'};
pie3(x,labels);
legend(labels);
