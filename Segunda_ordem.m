clc;
clear all;
close all;

%% Parâmetros
N = 1000;
fs = 1000;
dt = 1/fs;
T = N*dt;
t = 0:dt:T;


%% Sinal de entrada degrau
f_step = ones(1,length(t));
A = 10;
f_step = A*f_step;

figure
plot(t,f_step,'b','linewidth',2),grid;
xlabel('Tempo [s]');
ylabel('Força [N]');

%% Resposta a um degrau unitário
% m = 1;                      
% k = 4e3;
% zeta = 0.2;
% c = 2*zeta*sqrt(m*k)
% wn = sqrt(k/m);
% %resolver edo
% x0 = [0;0];
% tspan =[0:dt:T];
% ft= linspace(0,T,length(t));
% [tt, x_step] = ode45(@(t,x)odefcn(t,x,m,c,k,f_step,ft),tspan,x0);
% x_step = x_step(:,1);
% x_step = x_step';
figure
plot(t,x_step,'b','linewidth',2);grid on;
xlabel('Tempo [s]');
ylabel('Deslocamento [m]');
%% cáculo dos parâmetros
% determinando k
x_oo = x_step(N)
ke = A/x_oo
%% determinando Mp
x_p = max(x_step)
Mp = (x_p - x_oo)/x_oo
%% determinar zeta 
zetae = abs(log(Mp))/(sqrt((pi^2)+(log(Mp))^2))
%% determinar wn
t_p = find(x_step == x_p)
t_p=t_p*dt
wne = pi/(t_p*sqrt(1-zetae^2))
wn = sqrt(k/m)
%% determinar m
me = ke/wne^2
%determinar amortecimento
ce = 2*zetae*sqrt(ke*me)
c = 2*zeta*sqrt(m*k)