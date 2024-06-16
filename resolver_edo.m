clc;
clear all;
close all;

%%
%Runge Kutta 
% ode45
% ode23
% ode23s

%% ode23

f = @(t,y) 2*t;
tspan = [0 5];
y0 = 0;
[t,y] = ode23(f,tspan,y0);

figure
plot(t,y,'-o');

%% ode 45
f = @(t,y) 2*t;
tspan = [0 5];
y0 = 0;
[t,y] = ode45(f,tspan,y0);

figure
plot(t,y,'-o');

%% ode45 e function handle

y0 = [2;0];
tspan = [0 20];
[t,y]= ode45(@func,tspan,y0);
figure
plot(t,y(:,1),'-o',t,y(:,2),'g');
ylabel ('Solução de y');
legend('y_1','y_2');


%% Sistema massa mola amortecedor

m =3;
k = 1e+3;
c = 10;
t = 0:0.01:10;
f_input = sin(80*t);
ft = linspace(0,10,length(t));
x0 = [0;0];
tspan= [0:0.01:10];
[t,x] = ode45(@(t,x)odefcn(t,x,m,c,k,f_input,ft),tspan,x0);

figure
plot(t,x(:,1),'b',t,x(:,2),'r-');
ylabel ('Solução de y');
legend('x_1','x_2');

figure
plot(t,x(:,1));

