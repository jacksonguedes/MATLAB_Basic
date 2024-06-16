clc; clear all;close all;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Resolução de pênudlo simples com uma mola utilizando ODE45
% Parâmetros
dt = 0.001;    % intervalo de tempo s
P = 10000;      % quantidade de amostras
g = 9.81;       %gravidade m/s^2
m = 1;          %Massa em kg
k = 1e+2;        %rigidez da mola N/m
%y(1) = L;
%y(2) = velocidade (Lp)
%y(3) = theta
%y(4) = velocidade angular (thetap)
% condições iniciais
L(1) = 0.5;
Lp(1) = 0;
theta(1) = pi/10;
thetap(1) = 0;
y0 = [L(1);Lp(1);theta(1);thetap(1)];
equation = @(t,y)[y(2);(-(k*(y(1)-L(1)))/m)+g;y(4);-(g*y(3))/y(1)];

[t,sol] = ode45(equation,[0:dt:P*dt],y0);

L = sol(:,1);
Lp = sol(:,2);
theta = sol(:,3);
thetap = sol(:,4);

% comportamento do deslocamento na base inercial
for i=2:1:length(t)
    T_theta = [cos(theta(i)) sin(theta(i));
                -sin(theta(i)) cos(theta(i))];
    r_b(i,:) = [0;L(i)];
    r_I(i,:) = T_theta'*r_b(i,:)';
end

figure(1)
plot(r_I(:,1),r_I(:,2)),grid on
xlabel('posição em x');
ylabel('posição em y');
set(gca(),'ydir','reverse')
    
%% Animação


figure(2)
grid on;
xlim([-0.2 0.2]); ylim([0 1]);

for i = 1:100:length(t)
    plot(r_I(i,1),r_I(i,2),'ok','linewidth',4),hold on
    plot(r_I(2:i,1),r_I(2:i,2),'b','linewidth',1.2),hold on
    plot([0 r_I(i,1)],[0 r_I(i,2)],'k','linewidth',1.8)
    pause(0.0001)
    if i<length(t)-1
        cla(figure(2));
    end
    title(['Animação - resposta (t=',num2str(t(i)),' s)'])
    xlabel ('x');
    ylabel('y');
    set(gca(),'ydir','reverse')
end

