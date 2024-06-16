clc;
clear all;
close all;
%% Funções

a = 2;
b = 4;

%c = b+a
[c,t,f] = funcao_handle(a,b)

A = [1 2 3 4; 5 6 7 8];
B = zeros(size(A));

[C] = funcao_matriz(A,B)


