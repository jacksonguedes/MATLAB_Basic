clc;clear all;close all;

dados = importdata('numeros_estatistica.txt',' ',1);
A = A.data;% Salvando somente a matriz em uma vari�vel
mean(A)
%mediana
median(A)
%moda
mode(A)
% desvio padr�o
std(A)
%Varai�ncia
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