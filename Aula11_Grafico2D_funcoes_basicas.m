clc;
clear all;
close all;
%% Plotar Gráficos

% t = 0:0.001:10;
% y = 5*sin(3*t);
% z = 10*cos(3*t);
% %w = 10*tan(1000*t);
% 
% figure(1)
% plot(t,y,t,z)
% grid

% figure(2)
% plot(t,w)
% grid

tt = -10:0.1:10;
x = 2*tt + 2;
figure(3)
plot(tt,x)
grid on
x2 = 2*tt.^2 + 5 * tt + 1;
figure(4)
plot(tt,x2), grid;
%%  Colocando Informações
tt = -10:0.1:10;
x2 = 2*tt.^2 + 5 * tt + 1;
x3 = 5*tt+1;
figure
plot(tt,x2,'b-.',tt,x3,'k--','linewidth', 1.5), grid; %linewidth: Espessura da linha
xlabel('Tempo(s)');
ylabel('Amplitude');
title('Comparação de Equações');
legend('x2','x3');
%xlim([-10 6]);
%ylim([0 200]);
% axis([-10 6 -10 200]);
%% Ampliação

t =0:0.1:10;
y = t.^3+exp(3*t);
figure
plot(t,y,'g'),grid;
xlabel('Tempo(s)');
ylabel('Amplitude');
title('Exponencial - Ampliação');
axes('Position',[0.2 0.2 0.2 0.5])
box on
plot(t,y,'g'),grid;
xlim([9 10]);
ylim([0 10e+12]);
%% Subplot Gráfico com Duas imagens

t =0:0.1:10;
y = sin(3*t);
z = 2*cos(3*t);
w = 3*sin(3*t);
u = 2*cos(3*t);

figure
subplot(2,2,1);
plot(t,y),grid;

subplot(2,2,2)
plot(t,z),grid;

subplot(2,2,3)
plot(t,w),grid;

subplot(2,2,4)
plot(t,u),grid;
%% Gráficos em Escala Logarítmica

t =0:0.1:10000;
y = exp(-0.05*t)*(50000);
z = exp(0.5*t)*(50000);

%Plot Normal
figure(1)
plot(t,y),grid

%Plot y log
figure(2)
semilogy(t,y),grid

%Plot x log
figure(3)
semilogx(t,y),grid

%Plot x e y log
figure(4)
loglog(t,y),grid;

figure(5)
subplot(2,1,1);
plot(t,y),grid;
xlabel('Tempo(s)');
ylabel('Amplitude');
subplot(2,1,2);
loglog(t,y),grid;
xlabel('Tempo(s)');
ylabel('Amplitude');










