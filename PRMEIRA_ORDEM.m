clc;
clear all;
close all;

%% Parâmetros
N = 1000;
fs = 1000;
dt = 1/fs;
T = N*dt;
t = 0:dt:T;

% ft
num = [ 0 1];
den = [ 0.1 1];
G = tf(num,den);

y_step = step(G,t);

%% Entrada
u = ones(1,length(t));
A = 5;
u = A*u;
figure
plot(t,u,'b'),grid;
xlabel ('Tempo(s)');
ylabel('Amplitude (V)');


% saida
figure
plot(t,y_step,'r'),grid;
xlabel ('Tempo(s)');
ylabel('Velocidade (rad/s)');

%% cálculo de K
y1 = min(y_step(600:end));
y2 =max(y_step(600:end));
y_max = (y1+y2)/2;

K = y_max/A

% tau
y_tau = 0.632*A*K;
tau_find = find(abs(y_step-y_tau)<0.01);% indices
tau = mean(tau_find)*dt


