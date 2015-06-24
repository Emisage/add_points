close all;clear;clc
A = ones(200);
B = zeros(200);
C = [B A;A B];
f = C;
% f = imread('im118.jpg');  % input figure
imshow(f,[]);
figure
% f = rgb2gray(f);
% imshow(f,[])
% figure
% f = imnoise(f,'Gauss');
% imshow(f,[])
% figure;
% w = [0 1 0;1 -4 1;0 1 0];  % mask
% w = -[-1 -1 -1;-1 9 -1;-1 -1 -1];
% % imshow(w,[]);
% % figure
% g = imfilter(f,w,'conv'); % +mask
% imshow(g,[])
% figure
% g_r = imfilter(f,w,'corr');
% imshow(g_r,[])
% figure
% w_conv = rot90(w,2);      % Ðý×ª180¡ã
% g_conv = imfilter(f,w_conv,'replicate');
% imshow(g_conv,[])
% figure

w = ones(31);
% ¾í»ý+ ±ßÔµÌî³ä0
g = imfilter(f,w,'conv'); % +mask
imshow(g,[])
figure
% ±ßÔµÌî³ä0   
gd = imfilter(f,w);
imshow(gd,[])
figure
% ¸´ÖÆ±ßÔµ
gr = imfilter(f,w,'replicate');
imshow(gr,[])
% print(gcf,'djpeg',strcat('E:\MatLab_add\ÂË²¨\',num2str(i),'.jpeg'));

f = imread('im118.jpg');
f8 = im2uint8(f);
g8r = imfilter(f8, w, 'replicate');
figure, imshow(g8r, [])




