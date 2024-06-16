clc;
close all;
clear all;
%% Gráficos 3D

z = peaks(25);
figure
mesh(z);
%%
[x,y] = meshgrid(1:0.5:10,1:20);
z1 = sin(x)+cos(x);
figure
surf(z1);
xlabel('X');
ylabel('Y');
zlabel('Z');
colormap(summer)%winter
%% Interpolação de Cores

figure
surf(z)
colormap(pink);
shading interp %interpolação de cores
%% Gráfico de Relevo

figure
contour(z,16);
colormap default
%% Função Plot3

t = 0:0.1:10*pi;
x = sin(t);
y = cos(t);

figure
plot3(x,y,t), grid;
%% Esfera
[X,Y,Z] = sphere;
r = 20;
X2 = X*r;
Y2 = Y*r;
Z2 = Z*r;

figure
surf(X2+r,Y2-r,Z2);






