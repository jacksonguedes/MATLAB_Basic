clc;
clear all;
close all;

%% Par�metros
N = 1000;
fs = 1000;
dt = 1/fs;
T = N*dt;
t = 0:dt:T;
%% Fun��o transfer�ncia

%bloco 1
num1 = [1];
den1 = [1 0];
C = tf(num1,den1);

%bloco 2
num2 = [1];
den2 = [1 2];
G = tf(num2,den2);

%% bloco em s�rie
GS1 = C*G
GS2 = series(C,G)

%% Blocos paralelo
GP1 = parallel(C,G)
GP2 = C+G

%% Blocos com realimenta��o 
GR = feedback(C,G)

%% Resposta em frequencia de uma entrada conhecida
%% Par�metros
N = 1000;
fs = 100;
dt = 1/fs;
T = N*dt;
t = 0:dt:T;

%% entrada impulso
impulse(GR)

%% entrada degrau
step(GR)
[y_step,t] = step (GR,t);
figure
plot(t,y_step)
save('y_step','y_step','t');


%% entrada aleat�ria
u = randn(1,length(t));
y = lsim(GR,u,t);

figure
plot(t,u,'b',t,y,'--r'),grid;
legend ('input','output');

figure
lsim(GR,u,t);