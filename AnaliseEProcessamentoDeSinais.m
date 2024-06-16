clc;
clear all;
close all;
%% Parâmetros

N = 1000;  % Número de pontos
fs = 100;  % Frequência de Amostragem
dt =1/fs;  % Intervalo de tempo
T = N*dt;  % Período de análise
df = 1/T;  % Variação da frequência
t = 0:dt:T;% Vetor tempo

%% Sinal Impulso

u_imp = zeros(1, length(t));
A = 2; %Amplitude
u_imp(500) = A;

figure
plot(t,u_imp, 'b', 'linewidth',2),grid;
xlabel('Tempo(s)');
ylabel('Amplitude');

%% Sinal Senoidal

f = 1;
A = 2;
f_seno = A*sin(2*pi*f*t);

figure
plot(t,f_seno, 'b', 'linewidth',2),grid;
xlabel('Tempo(s)');
ylabel('Amplitude');
%% Soma de Senos

f1 = 2;
A1 = 2;
f2 = 3;
A2 = 1;

f_seno_som = A1*sin(2*pi*f1*t) + (A2*sin(2*pi*f2*t));

figure(1)
plot(t,f_seno_som, 'b', 'linewidth',2),grid;
xlabel('Tempo(s)');
ylabel('Amplitude');


f_seno_sub = A1*sin(2*pi*f1*t) - (A2*sin(2*pi*f2*t));

figure(2)
plot(t,f_seno_sub, 'b', 'linewidth',2),grid;
xlabel('Tempo(s)');
ylabel('Amplitude');

f_seno_mult = A1*sin(2*pi*f1*t).*(A2*sin(2*pi*f2*t));

figure(3)
plot(t,f_seno_mult, 'b', 'linewidth',2),grid;
xlabel('Tempo(s)');
ylabel('Amplitude');

%% Sinal Aleatório

f_rand = randn(1,length(t));

figure
plot(t,f_rand, 'b', 'linewidth',2),grid;
xlabel('Tempo(s)');
ylabel('Amplitude');
%% Sinal Quadrado

A = 2;
f_onda = 0.1;
f_onda = square(f_onda*2*pi*t);

figure
plot(t,f_onda, 'b', 'linewidth',2),grid;
xlabel('Tempo(s)');
ylabel('Amplitude');
