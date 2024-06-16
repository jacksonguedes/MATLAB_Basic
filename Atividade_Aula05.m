clc;
clear all;
close all;
%% EXERCICIO DE REVISÃO
S01 = 5e3;
fp01 = 0.6;% Atrasado
P01 = S01*fp01;
Q01 = sqrt(S01^2 - P01^2);
S1 = P01+j*Q01;
xL01 = 220^2/Q01;
L01 =  1/(2*pi*60*xL01)

fp01_ = 1;
S01_ = P01/fp01_;
S01_;
Q01_ = sqrt(S01_^2 - P01^2);
Q01;
Qc = Q01 - Q01_;
Qc;

xc01_ = 220^2/Qc;
xc01_;
C01_ = 1/(2*pi*60*xc01_);
C01_
%%
S02 = 15e3;
fp02 = 0.5;% Atrasado
P02 = S02*fp02;
Q02 = sqrt(S02^2 - P02^2);
S2 = P02+j*Q02;
xL02 = 220^2/Q02;
L02 =  1/(2*pi*60*xL02)

S03 = 10e3;
fp03 = 0.9;% Adiantado
P03 = S03*fp03;
Q03 = sqrt(S03^2 - P03^2);
S3 = P03+j*Q03;
xC03 = 220^2/Q03;
C03 =  1/(2*pi*60*xC03)
%% CONTEÚDO DA AULA05

Pmec = 0.75e3;
v = 110;
Eff = 0.735; % Eff = Pout/Pin
fp = 0.95;
Pele = Pmec/0.735;
S = Pele/fp;
Q = sqrt(S^2 - Pele^2);
Rp110 = 110^2/Pele;
Rp110
Pele
Q

Xp110 = 110^2/Q
Y = 1/Rp110 + 1/(j*Xp110);

Z = 1/Y















