clc;
clear all;
close all;
%% Tipos Específicos

y = rand(1,20);
figure
stem(y)%Gráfico de Pulso
%%
yb = rand(1,18);
figure
bar(yb) %Gráfico de Barras
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
