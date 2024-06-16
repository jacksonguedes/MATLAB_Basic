clc;
clear all;
close all;
%% Parâmetros

N = 1000;
fs = 1000;
dt = 1/fs;
T = N*dt;
t = 0:dt:T;
%% Função Transferência

% Bloco 1

num1 = [1];
den1 = [1 0];
C = tf(num1,den1)

% Bloco 2

num2 = [1];
den2 = [1 2];
G = tf(num2,den2)

%% Associação em Série, Paralelo e Loop das funções Transferências


% Bloco em Série

GS1 = C * G;
GS2 = series(C,G);

% Bloco em Paralelo

GP1 = parallel(C,G);
GP2 = C + G;


% Bloco com Realimentação

GR = feedback(C,G)


%% Resposta em Frequência de uma Entrada Conhecida 

N = 10000;
fs = 100;
dt = 1/fs;
T = N*dt;
t = 0:dt:T;

%% Entrada Impulso
impulse(GR); % Aplica um impulso a GR

%% Entrada Degrau
step(GR)
[y_step,t] = step(GR,t);
figure
plot(t,y_step)
save('y_step','y_step','t');

%% Entrada Aleatória

u = randn(1, length(t));
y = lsim(GR,u,t);

figure
plot(t,u,'b',t,y,'--r'),grid;
legend('input','outpu');

lsim(GR,u,t);
%% Dterminar os Polos e Zeros de uma Função Transferência

pole(GR)
zero(GR)

% Outra forma

[num,den] = tfdata(GR, 'v')
roots(num)
roots(den)

%% Plotar o Gráfico de Polos e Zeros
pzmap(GR)

%% Lugar das Raízes


num2 = [1];
den2 = [1 2];
G = tf(num2,den2)

% Gráfico Lugar das Raízes
figure
rlocus(G)

num = [1];
den = [1 5 4 0];
G2 = tf(num,den)

% Gráfico Lugar das Raízes
figure
rlocus(G2)





