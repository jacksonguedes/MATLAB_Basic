clc;
close all;
clear all;
%% Processamento de Imagens - Lendo e Plotando
%help images
%mathworks --> images

B = imread('eight.tif');
figure
imshow(B)

A = imread('Imagem_1.jpg');
figure
imshow(A);

%% Tamanho da Imagem

B = imread('eight.tif');
%figure
%imshow(B)

size(B) % Verficando o tamanho da imagem/vetor
[lin, col] = size(B);

A = imread('Imagem_1.jpg');
size(A)
[lin, col, plan] = size(A)


figure
subplot(2,1,1)
imshow(A)

subplot(2,1,2)
imshow(B)

%% Histograma das Cores
B = imread('eight.tif');
figure
imhist(B)

%% Escurecendo Imagem
B = imread('eight.tif');
figure
imhist(B)

B = B - 100;
figure
imhist(B)

%% Com imagem Colorida

A = imread('Imagem_1.jpg');
figure
subplot(3,1,1)
imshow(A);

A = A - 100;
subplot(3,1,2)
imshow(A);

A = A + 100;
subplot(3,1,3)
imshow(A);

%% Deixando Preto em Branco
A = imread('planeta.jpg');
%imshow(A)
pb = im2bw(A,0.5); % Tons em Preto e Branco
imshow(pb)

cinza = rgb2gray(A); % Imagem A em tons de cinza
imshow(cinza)
%% Em Tons de Cinza
B = imread('Imagem_1.jpg');
cinza = rgb2gray(B); % Imagem B em tons de cinza
imshow(cinza)

%% Reduzindo o Tamanho da Imagem
D = imresize(B,0.1, 'nearest');
imshow(D)
%% Com Valore definidos

C = imresize(B, [1800 2200], 'bilinear');
imshow(C)

%% Rotacionando

E = imrotate(B, 180, 'nearest');
imshow(E)

%% Filtros e Ruídos
% Ruidos

B = imread('Imagem_1.jpg');

figure
subplot(2,2,1)
imshow(B)

subplot(2,2,2)
Q = imnoise(B, 'gaussian'); % Método Gaussiano
imshow(Q)

subplot(2,2,3)
Q = imnoise(B, 'salt & pepper'); 
imshow(Q)

subplot(2,2,4)
Q = imnoise(B, 'speckle'); 
imshow(Q)
%% Filtro

J = imread('peppers.png');
figure
subplot(1,2,1)
imshow(J)

h = [1 2 1;2 4 2;1 2 1]; % Matriz de filtro
I = imfilter(J,h);
subplot(1,2,2)
imshow(I)















