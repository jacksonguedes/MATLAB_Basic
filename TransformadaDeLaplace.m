clc;
clear all;
close all;
%% Transformada De Laplace
syms t s;
x = (0.02/3)*exp(-2*t)*sin(6*t);
X = laplace(x,t,s);
simplify(X);
pretty(X)

%% Inverso de Laplace

y = ilaplace(X,s,t);
simplify(y);
pretty(y)

%% Laplace para Diferencial

syms t s x(t)
Dx = diff(x,t);
D2x = diff(x,t,2);
eq = D2x + 3*Dx+2*x == 1;

Z = laplace(eq,t,s);
pretty(Z)


