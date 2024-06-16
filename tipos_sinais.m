clc;
clear all;
close all;

%% Parâmetros
N = 10000; % número de pontos
fs = 1000; %frequencia de amostragem
dt = 1/fs;%intervalo de tempo
T = N*dt;%Período de análise
df = 1/T;%variação da frequencia
t = 0:dt:T;%vetor tempo


%% Impulso
u_imp = zeros(1,length(t));
A =2;
u_imp(100)=A;

figure
plot(t,u_imp, 'b','linewidth',2),grid;
xlabel('Tempo(s)');
ylabel('Amplitude');

%% Senoide
f = 1;
A = 2;
f_seno = A*sin(2*pi*f*t);
figure
plot(t,f_seno, 'b','linewidth',2),grid;
xlabel('Tempo(s)');
ylabel('Amplitude');

%% Soma de senos
f1 = 2;
A1 = 2;
f2 = 3;
A2 = 2;
f_seno_s = A1*sin(2*pi*f1*t).*(A2*sin(2*pi*f2*t));
figure
plot(t,f_seno_s, 'b','linewidth',2),grid;
xlabel('Tempo(s)');
ylabel('Amplitude');
%% Aleatório
f_rand = randn(1,length(t));
figure
plot(t,f_rand, 'b','linewidth',2),grid;
xlabel('Tempo(s)');
ylabel('Amplitude');

%% Chirp

fe1 = 10;
fe2 = 40;
f_chirp = chirp (t,fe1,T,fe2);
figure
plot(t,f_chirp, 'b','linewidth',2),grid;
xlabel('Tempo(s)');
ylabel('Amplitude');

%% Onda quadrada

A = 2;
f_onda = 1;
f_onda = square(f_onda*2*pi*t);
figure
plot(t,f_onda, 'b','linewidth',2),grid;
xlabel('Tempo(s)');
ylabel('Amplitude');
