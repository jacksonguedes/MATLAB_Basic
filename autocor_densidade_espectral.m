clc;
clear all;
close all;

%% Parâmetros
N = 100000; % número de pontos
fs = 1000; %frequencia de amostragem
dt = 1/fs;%intervalo de tempo
T = N*dt;%Período de análise
df = 1/T;%variação da frequencia
t = 0:dt:T;%vetor tempo
freq = 0:df:fs/2;%vetor frequência
%% Senoide
f = 100;
A = 2;
f_seno = A*sin(2*pi*f*t);
% figure
% plot(t,f_seno, 'b','linewidth',2),grid;
% xlabel('Tempo(s)');
% ylabel('Amplitude');

%função de autocorrelação
% figure
% autocorr(f_seno);
%função correlação
f_rand = randn(1,length(t));
[R,tau] = xcorr(f_rand,f_rand,100,'unbiased');
figure
plot(tau,R),grid;
xlabel('\tau');
ylabel('R_{f_{seno},f_{seno}}');

%% densidade espectral
f_rand = randn(1,length(t));

nfft = round(N);
[fpsd,freq] = cpsd(f_seno,f_rand,[],[],nfft,fs);

figure
plot(freq,abs(fpsd),'r'),grid;
xlabel('frequência (Hz)');
ylabel('S_{f_{seno},f_{seno}}');



%% resposta em frequência estimada (H)

f_input = 10*sin(20*pi*t);%entrada
f_output=randn(1,length(t));%saída
nfft = round(N);
[H_est,freq] = tfestimate(f_seno,f_rand,[],[],nfft,fs);%FRF estimada
figure
loglog(freq,abs(H_est),'r'),grid;
xlabel('frequência (Hz)');
ylabel('H');


