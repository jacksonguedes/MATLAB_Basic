clc;
clear all;
close all;

%% Resolver Equação
%Polinômios

P = [1 2 1];                  % Equação X^2 + 2x +1
O = [1 2 1 1];                % Equação do Terceiro Grau
r = roots(O);                 % Raízes
polyval(O,-0.1226 + 0.7449i); % Testando as raízes no polinômios
polyder(O);                   % Calculando a Derivada do polinômio

%% Equação da Reta
t = 0:0.1:5;
y = 2*t.^3+3*t+1;

[a] = polyfit(t,y,1) %a(1)x + a(2)
yy = a(1)*t+a(2);

figure
plot(t,y,'b',t,yy,'r');
%% Equação da Reta para um vetor Aleatório

z = randn(1, length(t));
c = polyfit(t, z, 2);
zz = c(1)*t.^2+c(2)*t+c(3);
figure
plot(t,z,'b',t,zz,'--r');





