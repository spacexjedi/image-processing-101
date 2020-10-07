pkg load image;

image = imread('pratica7.png');
image = im2double(image);
[M, N] = size(image); #row column
P = 2*M;
Q = 2*N;

tf = fft2(image, P, Q);
tf = fftshift(tf);
espectro = uint8(abs(tf));

figure(1), imshow(espectro)
imwrite(espectro, 'espectro.png');

filtro = 
imwrite(filtro, 'filtro.png');
figure(2), imshow(filtro)
figure(3), imshow(filtro.* espectro)
filter = tf.*filtro;
filter = ifftshift(filter);
filter = ifft2(filter);
filter = real(filter);
output = zeros(M, N);
output = filter(1:M, 1:N);

figure(4), imshow(im2uint8(output));
imwrite(output, 'resultado.png');


