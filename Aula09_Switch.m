clc;
close all;
clear all;
%% Switch
disp('1 - Material classe A');
disp('2 - Material classe B');
disp('3 - Material classe C');

var = input('Qual a op��o desejada: ');
a = 1;
b = 4;
switch var 
    case 1
        disp(' Material classe A');
        x = a + b
    case 2
        disp(' Material classe B');
        x = a - b
    case 3
        disp(' Material classe C');
        x = a * b
    otherwise
        disp('3 - Material inv�lido');
        x = a / b
end
%% Switch com Gr�ficos

x = [10 50 40];
plot = 'pz';

switch plot
    case 'bar'
        bar(x)
        title('Gr�fico de Barras');
    case 'pz'
        pie3(x)
        title('Gr�fico de Pizza');
    otherwise
        warning('Nenhum plot criado');
end

