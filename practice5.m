pkg load image

function res = makesomenoise(num)
image = imread("pratica5.png");
result = zeros(256,384);
for i = 1:num
    m = zeros(256,384);
    m = imnoise(image, "gaussian", 0, 0.25);
    m = m*(1/num);
    result+= m;
endfor
res = result;
endfunction

image_8 = makesomenoise(8);
image_16 = makesomenoise(16);
image_64 = makesomenoise(64);

figure, imshow(image_8);
imwrite(image_8, "image8.png");

figure, imshow(image_16);
imwrite(image_16, "image16.png");

figure, imshow(image_64);
imwrite(image_64, "image64.png");


# A quantidade de amostras 
# A media com poucas amostras fica com ruído perceptivel
# a qualidade é maior com mais imagens de amostra
