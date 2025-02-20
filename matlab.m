% Task 1:
% 
% clear all
% close all
% f = imread('assets/crabpulsar.tif');
% w = [-1 -1 -1;
%      -1  8 -1;
%      -1 -1 -1];
% g1 = abs(imfilter(f, w));     % point detected
% se = strel("disk",1);
% g2 = imerode(g1, se);         % eroded
% threshold = 100;
% g3 = uint8((g2 >= threshold)*255); % thresholded
% montage({f, g1, g2, g3});

%Task 2:
% f = imread("assets/circuit_rotated.tif");
% [g, t] = edge(f, 'sobel', []);
% imshow(g)
% 
% f = imread("assets/brain_tumor.jpg");
% [g, t] = edge(f, 'sobel', []);
% imshow(g)

%Task 3:
% Read image and find edge points
% clear all; close all;
% f = imread('assets/circuit_rotated.tif');
% fEdge = edge(f,'Canny');
% figure(1)
% montage({f,fEdge})

clear all; close all;
f = imread('assets/circuit_rotated.tif');
fEdge = edge(f,'Canny');
% Perform Hough Transform and plot count as image intensity
[H, theta, rho] = hough(fEdge);
figure(2)
imshow(H,[],'XData',theta,'YData', rho, ...
            'InitialMagnification','fit');
xlabel('theta'), ylabel('rho');
axis on, axis normal, hold on;