clc;
clear all;
close all;
%% aleatórios
y = rand(1,10);
z = randi([5 8],1,10);
x = randn(1,100);
p = randperm(25,5);

%média
mean(x)
A = [1 0 0 0;4 5 6 7; 0 1 1 0]
mean(A,1)
mean(A,2)
%% mediana
w = [ 1 2 3 4 5 8 6 5 5 4 5 5];
mediana = median(w);
median(x);
%moda
  moda =mode(w);
  
 %% desvio padrão
 std(x);
 %variância
 var = var(x);
 % covariância
 w =[1 2 4 5 2 3 7 8 7 4 4 3 3 9 3];
q =[6 3 4 5 5 3 7 9 7 5 4 3 9 9 10];
 cov(x);
 cov(w,q)
 %%
clc;
clear all;
close all;

%% Estatística
% Aula 35
%Números aleatórios
y = rand(1,10); % 0 a 1 
z = randi([6 10],1,10);% valores limites definidos inteiros
x = randn(100,1);% valores aleatórios positivos e negativos
p = randperm(23,23);% valores aleatórios não repetidos
%média
mean(x)
%média matriz
A = [1 0 0 0 ;4 5 6 7; 0 1 1 0];
mean(A);%Linhas
mean(A,2);% colunas

w= [1 2 4 5 2 3 7 8 7 4 4 3 3 9 3];
%mediana
median(w)
median(x)
%moda
mode(w)
mode(x)
%% desvio padrão
std(x)
%Varaiância
var = var(x)
%covariância
cov(x)
q = [6 3 4 5 5 3 7 9 7 5 4 3 9 9 10];

cov(w,q)


%% Gráficos
clear all;clc;
b = importdata('dados_rand.txt',' ',1)
data1 = b.data(:,1);
data2 = b.data(:,2);

figure
h = histogram(data1)
%% 
numero_amos = length(data1);
k = 2+3.322*log10(numero_amos);% número de classes
k = ceil(k);
xmin = min(data1);
xmax = max(data1);
 j = (xmax-xmin)/k;
 
 %
 figure
 histogram(data1,k);
 hold on 
 histogram(data2,k);
 legend('Dados caso 1', 'Dados caso 2');
 
 % box plot
 
 figure
 boxplot(data1)
 %
 load carsmall
 figure
 boxplot(MPG,Origin)
 
 

