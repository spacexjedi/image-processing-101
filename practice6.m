pkg load image;

image = imread("pratica6.png");
image = im2double(image);
imsize = size(image);

tf = fft2(image, imsize(1)*2, imsize(2)*2);


tf = fftshift(tf);
tf_espectro = tf;

figure(1),imshow(uint8(abs(tf_espectro)));

filter = zeros(size(tf));

P = size(tf)(1)
Q = size(tf)(2)

A = 20;

for u=1:P
  for v=1:Q
    B = sqrt((u - P/2)^2 + (v - Q/2)^2);
    filter(u,v) = e^(-(B^2)/(2*(A^2)));
  endfor
endfor

figure(2), imshow(filter);

tf = tf.*filter;
tf = ifftshift(tf);
tf_filter = ifft2(tf);
tf_filter = real(tf_filter);
output = tf_filter([1:imsize(1)], [1:imsize(2)]);
output = im2uint8(output);

figure(3),imshow(output);

imwrite(output, 'veia.png');


# R: Tamanho da imagem 512x512. O dobro da imagem original 
