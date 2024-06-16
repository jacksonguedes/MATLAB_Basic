clc;
clear all;
close all;

%% Par�metros
N = 100000; % n�mero de pontos
fs = 1000; %frequencia de amostragem
dt = 1/fs;%intervalo de tempo
T = N*dt;%Per�odo de an�lise
df = 1/T;%varia��o da frequencia
t = 0:dt:T;%vetor tempo
freq = 0:df:fs/2;%vetor frequ�ncia
%% Senoide
f = 100;
A = 2;
f_seno = A*sin(2*pi*f*t);
% figure
% plot(t,f_seno, 'b','linewidth',2),grid;
% xlabel('Tempo(s)');
% ylabel('Amplitude');

%fun��o de autocorrela��o
% figure
% autocorr(f_seno);
%fun��o correla��o
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
xlabel('frequ�ncia (Hz)');
ylabel('S_{f_{seno},f_{seno}}');



%% resposta em frequ�ncia estimada (H)

f_input = 10*sin(20*pi*t);%entrada
f_output=randn(1,length(t));%sa�da
nfft = round(N);
[H_est,freq] = tfestimate(f_seno,f_rand,[],[],nfft,fs);%FRF estimada
figure
loglog(freq,abs(H_est),'r'),grid;
xlabel('frequ�ncia (Hz)');
ylabel('H');


