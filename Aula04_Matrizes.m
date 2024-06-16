clc;
clear all;
close all;
%% Matriz
M = [1 2 3 ; 4 5 6; 9 7 3]
N = [4 0 0 0;0 8 4 4;0 10 3 5;0 9 9 9;0 0 0 0]
x = size(M);%Tamanho LxC
y = size(N,1);%Qtde Linhas
z = size(N,2);%Qtde Colunas
%% Matriz de zeros
P = zeros(2,4); % Matriz de zeros
P = zeros(size(N)); % Matriz de zeros do tamanho de N
%% Matriz de Um
Q = ones(3,6);
Q = ones(size(M));
%% Matriz Identidade
K = eye(6);
K(3,5) = 7; %Atribuiu um valor na linha e coluna específica
%% Operação com Matrizes
A = [1 5;1 2];
B = [1 3;1 5];
%% Soma 
A + B;
%% Subtração
A - B;
%% Multiplicação
A*B;
%% Determinante
det(A);
%% Inversa
inv(A);
%% Transposta
A;
A';
%% Autovalores e autovetores
[avet,avalor] = eig(A);
%% Diagonal
diag(A);








