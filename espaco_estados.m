clc;
clear all;
close all;

%% definir uma função transferência
num = [-3];
den = [1 2 1];
G = tf(num,den)

[A,B,C,D] = tf2ss(num,den);
sys = ss(G);

% controlável
P = [B A*B];
postoC = rank(P);
deterC = det(P);
w = size(A,1);

if deterC~=0&& postoC ==w
    disp('Sistema controlável');
else
    disp('Sistema não controlável');
end

