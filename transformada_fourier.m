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
freq = 0:df:fs/2;%vetor frequência
%% Senoide
f = 5;
A = 2;
f_seno = A*sin(2*pi*f*t);

% f1 = 20;
% A1 = 2;
% f2 = 30;
% A2 = 2;
% f_seno = A1*sin(2*pi*f1*t)+(A2*sin(2*pi*f2*t));
% figure
% plot(t,f_seno, 'b','linewidth',2),grid;
% xlabel('Tempo(s)');
% ylabel('Amplitude');

f_seno_fft = fft(f_seno)*dt;
f_seno_fft_2 = f_seno_fft(1:length(freq));

figure
loglog(freq,abs(f_seno_fft_2), 'b','linewidth',2),grid;
xlabel('Frequência(Hz)');
ylabel('Amplitude');

figure
loglog(freq,angle(f_seno_fft_2)*180/pi, 'b','linewidth',2),grid;
xlabel('Frequência(Hz)');
ylabel('Angulo');
% f_seno_ifft = ifft(f_seno_fft)/dt;
% 
% figure
% plot(t,f_seno_ifft, 'b','linewidth',2),grid;
% xlabel('Tempo(s)');
% ylabel('Amplitude');

%% Aleatório

f_rand = randn(1,length(t));
figure
plot(t,f_rand, 'b','linewidth',2),grid;
xlabel('Tempo(s)');
ylabel('Amplitude');

f_rand_fft = fft(f_rand)*dt;
f_rand_fft_2 = f_rand_fft(1:length(freq));

figure
plot(freq,abs(f_rand_fft_2), 'b','linewidth',2),grid;
xlabel('Frequência(Hz)');
ylabel('Amplitude');

f_rand_ifft = ifft(f_rand_fft)/dt;

figure
plot(t,f_rand_ifft, 'b','linewidth',2),grid;
xlabel('Tempo(s)');
ylabel('Amplitude');

