% atividade filtros

pkg load image;

img = imread("pratica4.jpg");


img = im2double(img);


mean_filter = ones(9,9);
mean_filter = mean_filter.*1/81;

output = filter2(mean_filter, img);

figure, imshow(output);

%O que aconteceu?
% filtro zero, as bordas ficam pretas.

imwrite(output, "img1.jpg", "quality", 100);

%Borda falsa
%'doc: replicate' — Pad by repeating border elements of array.
img3 = padarray(img, [4,4], 'replicate');
output2 = filter2(mean_filter, img3, 'valid');

figure,imshow(output2);
imwrite(output2, "img2.jpg", "quality", 100);

%Filtros de Sobel
sobel_filter = [-1,-2, -1;
				 0, 0,  0;
				 1, 2,  1];

img3 = padarray(img, [1,1], 'replicate');
sobel1 = filter2(sobel_filter, img3, 'valid');
sobel2 = filter2(sobel_filter, img3, 'valid');
output3 = abs(sobel1) + abs(sobel2);

figure, imshow(output3);
%O que aconteceu?
%https://pt.wikipedia.org/wiki/Filtro_Sobel

imwrite(output3, "img3.jpg", "quality", 100);



