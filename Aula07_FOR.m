clc;
clear all;
close all;
%%
a = 1;
b = 1;
% for i = 1:1:4
%    % a = a+i*2 %P.A
%     b = 1;
%     b = b*2^i % P.G
% end   

for i = 1:1:4
    a = a+i*2; %P.A
    
    if rem(a,2) == 0
        x = a
    end
end  
%% For para leitura de matriz
A = [1 2 3 4];
B = zeros(size(A));
C = zeros(size(A));


for i=1:1:4
   B(i) = A(i)*cos(30);
   C(i) = A(i)*exp(2*i);
end   
B
C
plot(B,C)
%%
A = [1 2 3 4; 5 6 7 8];
B = zeros(size(A));

for i=1:1:4
    for j=1:1:2
        B(j,i) = A(j,i)*2*i^2 + 3*i + 1
    end
end   

plot(A,B)


