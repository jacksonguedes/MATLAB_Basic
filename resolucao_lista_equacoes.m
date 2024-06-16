clc;clear all;close all;
%%%%%%%%%%%%%%%%%%%%%%
%% 1 - a
x = [1 13 52 6];
roots(x)
% 1 - b
x = [1 0 0 9 5 2];
roots(x)
% 1 - c
x = [1 3 7 0 1];
roots(x)
% 1 - d
x = [1 2 1];
roots(x)
%% 2 - a
x = [1 13 52 6];
polyder(x)
% 2 - b
x = [1 0 0 9 5 2];
polyder(x)
% 2 - c
x = [1 3 7 0 1];
polyder(x)
% 2 - d
x = [1 2 1];
polyder(x)
%% 3 - a
% equação da reta
x = 0:0.1:5;
y = x.^3+13*x.^2 + 52.*x+6;
[a] = polyfit(x,y,3)
% 3 - b
x = 0:0.1:5;
y = x.^5+9*x.^2 + 5.*x+2;
[a] = polyfit(x,y,3)
% 3 - c
x = 0:0.1:5;
y = x.^4+3*x.^3 + 7.*x.^2+1;
[a] = polyfit(x,y,3)
% 3 - d
x = 0:0.1:5;
y = x.^2+2.*x + 1;
[a] = polyfit(x,y,3)
%% 4-
%4-a
f = @(x)  x.^3+13*x.^2 + 52.*x+6;
q = integral(f,0,5)
%4-b
f = @(x)  x.^5+9*x.^2 + 5.*x+2;
q = integral(f,0,5)
%4-c
f = @(x)  x.^4+3*x.^3 + 7.*x.^2+1;
q = integral(f,0,5)
%4-d
f = @(x)  x.^2+2.*x + 1;
q = integral(f,0,5)

%% 5
% 5 a
A = [1 2 -3;3 -1 2;2 1 1];
B = [1; 0 ;2];
x = A\B
% 5 b
A = [2 2 ;5 2;1 2];
B = [5; 3 ;1];
x = A\B
% 5 c
A = [2 6 -8;5 7 4;6 10 -1];
B = [0; 3 ;10];
x = A\B

%% 6 - complexos
a = 8+3*j;
b = 5-2*j;

% a
c=a+b

%b
c=a-b

%c
c=a*b

%d
c=a/b

%e
abs(a+b)

%f
angle(b-a)*180/pi

%g
real(a-b)

%h
imag(a+b)

%% 7 - Laplace
%a
syms t s% criar símbolos
disp('Laplace');
x = (1)*exp(3*t);  %Equação
X = laplace(x,t,s);               %Laplace    
simplify(X);                      %Simplificar
pretty(X)                         %Mudar forma de representar
disp('Inversa');
y = ilaplace(X,s,t);              %Laplace inverso
simplify(y);
pretty(y)

% b
syms t s% criar símbolos
disp('Laplace');
x = sin(3*pi*t);  %Equação
X = laplace(x,t,s);               %Laplace    
simplify(X);                      %Simplificar
pretty(X)                         %Mudar forma de representar
disp('Inversa');
y = ilaplace(X,s,t);              %Laplace inverso
simplify(y);
pretty(y)

% c
syms t s% criar símbolos
disp('Laplace');
x = cos(3*pi*t);  %Equação
X = laplace(x,t,s);               %Laplace    
simplify(X);                      %Simplificar
pretty(X)                         %Mudar forma de representar
disp('Inversa');
y = ilaplace(X,s,t);              %Laplace inverso
simplify(y);
pretty(y)

% d
syms t s% criar símbolos
disp('Laplace');
x = 2*t;  %Equação
X = laplace(x,t,s);               %Laplace    
simplify(X);                      %Simplificar
pretty(X)                         %Mudar forma de representar
disp('Inversa');
y = ilaplace(X,s,t);              %Laplace inverso
simplify(y);
pretty(y)

% e
syms t s% criar símbolos
disp('Laplace');
x = exp(-4*t);  %Equação
X = laplace(x,t,s);               %Laplace    
simplify(X);                      %Simplificar
pretty(X)                         %Mudar forma de representar
disp('Inversa');
y = ilaplace(X,s,t);              %Laplace inverso
simplify(y);
pretty(y)

% f
syms t s% criar símbolos
disp('Laplace');
x = sin(4*pi*t)+exp(-3*t);  %Equação
X = laplace(x,t,s);               %Laplace    
simplify(X);                      %Simplificar
pretty(X)                         %Mudar forma de representar
disp('Inversa');
y = ilaplace(X,s,t);              %Laplace inverso
simplify(y);
pretty(y)