clc;
clear all;
close all;

%% Par�metros

N = 1000;         % N�mero de pontos
fs = 100;         % Frequ�ncia de Amostragem
dt =1/fs;         % Intervalo de tempo
T = N*dt;         % Per�odo de an�lise
df = 1/T;         % Varia��o da frequ�ncia
t = 0:dt:T;       % Vetor tempo
freq = 0:df:fs/2; % Vetor de Frequ�ncia

%% Transformada de Fourier de um Sinal Senoidal

% f = 100;
% A = 2;
% f_seno = A*sin(2*pi*f*t);
% 
% figure
% plot(t,f_seno, 'b', 'linewidth',2),grid;
% xlabel('Tempo(s)');
% ylabel('Amplitude');

f1 = 2;
A1 = 2;
f2 = 3;
A2 = 1;

f_seno_som = A1*sin(2*pi*f1*t) + (A2*sin(2*pi*f2*t));


f_seno_fft = fft(f_seno_som)*dt;
f_seno_fft_2 = f_seno_fft(1:length(freq));

figure(1)
loglog(freq, abs(f_seno_fft_2), 'b', 'linewidth', 2), grid;
xlabel('Frequ�ncia(Hz)');
ylabel('Amplitude');

figure(2)
loglog(freq, angle(f_seno_fft_2)*180/pi, 'b', 'linewidth', 2), grid;
xlabel('Frequ�ncia(Hz)');
ylabel('�ngulo');


%% Fazendo a Transformada Inversa

f_seno_ifft = ifft(f_seno_fft)/dt;

figure
plot(t,f_seno_ifft, 'b', 'linewidth',2),grid;
xlabel('Tempo(s)');
ylabel('Amplitude');




