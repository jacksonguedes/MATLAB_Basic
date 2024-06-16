clc;
clear all;
close all;
%% Importar arquivo txt

A = importdata('dados.txt',' ',1)
M = A.data;
N =A.textdata;
M(1,3);
N(1,3);

%Importar dados Excel
dados = xlsread('dados.xlsx');
[dados,texto,resto] = xlsread('dados.xlsx','Planilha2');
dadosn = 2*dados;

%% Salvar e carregar
%salvar
t = 0:0.1:10;
x = 3*sin(3*pi*t);
save('seno','t','x');
%% carregar
% load seno
load Velocidade
t = linspace(1,10,622);
figure
plot(t,velocidade)


%% Abrir txt e scanear;
arquivo = fopen('teste1.txt')
a = fscanf(arquivo,'%d');%inteiros
b = fscanf(arquivo,'%f')%inteiros
fclose(arquivo);
%%
file = fopen('tsunamis.txt')
line = fgetl(file);
%% scan de matriz
arquivo = fopen('matriz.txt');
% A = fscanf(arquivo,'%f',[3 3]);
% A = A'
[B,i] = fscanf(arquivo,'%d',[3 3])
fclose(arquivo);

%% 
clear all;clc;
file = fopen('dados_dias.txt');
B = fscanf(file,'Hora %d, Temperatura %f\n',[2 7]);
fclose('all')


%% Escrever em um arquivo txt

file = fopen('teste2.txt','w');%w - write
t = 0:0.2:10;
fprintf(file,'%d\n ',t);
fprintf(file,'%s \n','dados');
