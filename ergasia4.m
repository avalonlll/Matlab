RGB = imread('C:\Users\avalonlll\Desktop\photo.jpg');
I = rgb2gray(RGB);
J = dct2(I); %������� ��� ������ ���������� ��� ��� ������
J(abs(J) < 10) = 0; 
K = idct2(J); %��������� ��� ���� ��� ������� ���� ������ ��� �����
figure
imshowpair(I,K,'montage') %��������� ��� ��� 2 ������� �� ��� ����� ���� ����
title('Original Grayscale Image (Left) and Processed Image (Right)');
