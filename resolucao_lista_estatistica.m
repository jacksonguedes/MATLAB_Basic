clc;clear all;close all;

dados = importdata('numeros_estatistica.txt',' ',1);
A = A.data;% Salvando somente a matriz em uma variável
mean(A)
%mediana
median(A)
%moda
mode(A)
% desvio padrão
std(A)
%Varaiância
var(A)

%% Histograma
figure;
h = histogram(A);
%% box plot
figure
boxplot(A)
%% 
%ORDEANDO
b = sort(A);