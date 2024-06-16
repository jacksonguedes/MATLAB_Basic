clc;
clear all;
close all;
%% WHILE
a= 1;
i = 0;

while i<=19
    a = a+2*i
    i=i+1;
end
%%

limit = 0.8;
s = 0;
while s~=10
    t = rand
    s = s + t
    if s > limit
        s = 10;
    end
end




