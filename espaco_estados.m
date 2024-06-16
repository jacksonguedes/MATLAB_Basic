clc;
clear all;
close all;

%% definir uma fun��o transfer�ncia
num = [-3];
den = [1 2 1];
G = tf(num,den)

[A,B,C,D] = tf2ss(num,den);
sys = ss(G);

% control�vel
P = [B A*B];
postoC = rank(P);
deterC = det(P);
w = size(A,1);

if deterC~=0&& postoC ==w
    disp('Sistema control�vel');
else
    disp('Sistema n�o control�vel');
end

