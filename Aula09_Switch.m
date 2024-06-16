clc;
close all;
clear all;
%% Switch
disp('1 - Material classe A');
disp('2 - Material classe B');
disp('3 - Material classe C');

var = input('Qual a opção desejada: ');
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
        disp('3 - Material inválido');
        x = a / b
end
%% Switch com Gráficos

x = [10 50 40];
plot = 'pz';

switch plot
    case 'bar'
        bar(x)
        title('Gráfico de Barras');
    case 'pz'
        pie3(x)
        title('Gráfico de Pizza');
    otherwise
        warning('Nenhum plot criado');
end

