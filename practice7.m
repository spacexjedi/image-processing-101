pkg load image;

image = imread('pratica7.png');
image = im2double(image);
imsize = size(image); 

tf = fft2(image, imsize(1)*2, imsize(2)*2);
tf = fftshift(tf);
espectro = tf;
espectro = uint8(abs(espectro));

figure(1), imshow(espectro)
imwrite(espectro, 'espectro.png');

P = size(tf)(1);
Q = size(tf)(2);

filtro = ones(size(tf));

A = 20;

for u=1:P 
    for v=1:Q
        if(v >= 725 && v <= 783)
            if(u >= 0 && u <= 790 || u>= 826 && u<= 1616)
                filtro(u,v) = 0;
            endif
        endif
        if((v >= 705 && v<= 798) && (u >= 0 && u <= 50))
            filtro(u, v) = 0;
        endif
    endfor
endfor

figure(2), imshow(filtro);
imwrite(filtro, 'filtro.png');

tf = tf.*filtro;
tf = ifftshift(tf);
tf_filter = ifft2(tf);
tf_filter = real(tf_filter);
resultado = tf_filter([1:imsize(1)], [1:imsize(2)]);

resultado = im2uint8(resultado);

figure(3), imshow(resultado);
imwrite(resultado, 'resultado.png');

espectro = filtro.*uint8(abs(espectro));
figure(4), imshow(espectro);




