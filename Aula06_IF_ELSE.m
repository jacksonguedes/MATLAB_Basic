clc;
clear all;
close all;
%% L�gica if else
a = 1;
b = 1;
c = a+b;
d = c+a;

% if c>=2
%     disp('Resultado satisfat�rio');
% else
%     c = 10;
% end
%If levando em conta a l�gica E
% if c>=2 && d>3
%     disp('Resultado satisfat�rio');
% else
%     disp('Resultado insuficiente');
% end 

%If levando em conta a l�gica OU
% if c>=2 || d>3
%     disp('Resultado satisfat�rio');
% else
%     disp('Resultado insuficiente');
% end 

if c>=3|| d~=3
    disp('Ok');
elseif d ==3||c==2
    disp('Yes');
else
    disp('No');  
end

