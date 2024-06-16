clc;
clear all;
close all;
%% Importando Dados .txt

A = importdata('dados.txt',' ',1)
M = A.data;
N = A.textdata;
M
M(3,4)

%% 

dados = xlsread('dados.xlsx');
[dados,texto,resto] = xlsread('dados.xlsx'); % Pega o texto e dados. Planilha 1
[dados,texto,resto] = xlsread('dados.xlsx', 'Planilha2')  % Planilha 2
dadosn = 2*dados
