RGB = imread('C:\Users\avalonlll\Desktop\photo.jpg');
I = rgb2gray(RGB);
J = dct2(I); %Αφαιρεί τις υψηλές συχνότητες από την εικόνα
J(abs(J) < 10) = 0; 
K = idct2(J); %Επαναφορά της όψης της εικόνας στην αρχική της μορφή
figure
imshowpair(I,K,'montage') %εμφανίζει και τις 2 εικόνες τη μία δίπλα στην άλλη
title('Original Grayscale Image (Left) and Processed Image (Right)');
