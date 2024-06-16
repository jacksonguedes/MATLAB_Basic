clc;clear all;close all
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Resposta para entrada degrau de amplitude A
%Parâmetros
N = 1000; % número de pontos
fs = 10; %frequência de amostragem
dt = 1/fs;  %tempo de amostragem
T = N*dt;%período
t = 0:dt:T;

num = [0 1];
den = [1 0.1];
G = tf(num,den)

figure
step(G,t),grid on;

A = 5;
opt = stepDataOptions('StepAmplitude',A);
figure
step(G,t,opt),grid on;

%% para Octave

[y] = step(G,t),grid on;
y = y*A;
figure
plot(t,y);grid on

