function [B] = funcao_matriz(A,B)

for i=1:1:4
    for j=1:1:2
        B(j,i) = A(j,i)*2*exp(3)
    end
end
end