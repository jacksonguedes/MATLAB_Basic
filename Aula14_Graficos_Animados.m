clc;clear all;close all;
%% Gráficos Animados

x = [1 1 2 3 8 9 7];
y = [0 5 5 3 1 1 0];

figure(1)
for i = 2:1:6
    y(i) = y(i) + i;
    plot([x],[y],'b','linewidth',1.5);
    hold on; grid on
    xlim([0,10]);
    ylim([0,10]);
    pause(0.5);
   
    if i < 6
        cla(figure(1)); % Limpar a figura
    end
end

%% Gráficos Animados - Apresentação Dinâmica
cla;clear all;close all;
t = 0:0.01:10;
y = 4*sin(3*pi.*t);
%%
figure
for i = 2:1:length(t)
    plot(t(1,1:i),y(1,1:i),'b');hold on;grid on;
    xlim([0,1]);
    ylim([-4, 4]);
    pause(0.1);
end
%% Com marcador
figure(2)
for i = 2:1:length(t)
    plot(t(1,1:i),y(1,1:i),'b');hold on;grid on;
    plot(t(1,i),y(1,i),'ko','linewidth',4);
    xlim([0,1]);
    ylim([-4, 4]);
    pause(0.01);
    if i < length(t)
        cla(figure(2)); % Limpar a figura
    end
end
%%
