close all;clc
f = imread('im118.jpg');
whos f
subplot(3,3,1)
imshow(f,[])
title('原figure')
img = rgb2gray(f);
subplot(3,3,2)
imshow(img)
title('gray')
% img = img(10:80,10,80);
img = uint8(img);
subplot(3,3,3)
imshow(img,[])
%% 直接计算梯度gradient
img = double(img);
[px,py] = gradient(img);
G = sqrt(px.*px + py.*py);
G1 = uint8(G);
subplot(3,3,4)
imshow(G1)
title('gradient')
hold on 
quiver(px,py);
%% 通过fspecial（‘sobel’）
hy = fspecial('sobel');
hx = hy';
ly = imfilter(double(img),hy,'replicate');
lx = imfilter(double(img),hx,'replicate');
gradmag = sqrt(ly.^2 + lx.^2);
subplot(3,3,5);
imshow(gradmag, [])
%% 通过fspecial('laplacian')
hy = fspecial('laplacian');
hx = hy';
ly = imfilter(double(img),hy,'replicate');
lx = imfilter(double(img),hx,'replicate');
gradmag = sqrt(ly.^2 + lx.^2);
subplot(3,3,6);
imshow(gradmag, [])

