clc;
clear all;
close all;

%% Determinar os polos e zeros de uma funçaõ transferência
%bloco 1
num1 = [1];
den1 = [1 0];
C = tf(num1,den1);

%bloco 2
num2 = [1];
den2 = [1 2];
G = tf(num2,den2);

% Blocos com realimentação 
GR = feedback(C,G)

%% polos e zeros
pole(GR)
zero(GR)

[num,den] = tfdata(GR,'v')
roots(num)
roots(den)

%% plotar o gráfico de polos e zeros
pzmap(GR)


%% Lugar das raízes
num2 = [1];
den2 = [1 2];
G = tf(num2,den2)
%gráico_lugar das raízes
figure
rlocus(G)

num = [1];
den = [1 5 4 0];
G2 = tf(num,den)
%gráico_lugar das raízes
figure
rlocus(G2)

