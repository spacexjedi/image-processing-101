pkg load image;

img = imread("imagem.jpg");

#imshow(img);

[counts, x] = imhist(img);

[M1, M2] = size(img);

#matrix 

img2 = im2uint8(zeros(M1, M2));


temp = zeros(size(counts));
output = zeros(size(counts));

temp = counts./(M1*M2);

output(1) = 255*temp(1);


for i=2:256
    output(i) = (255*temp(i)) + output(i-1);
endfor


# output

for i=1:M1
    for j=1:M2
        img2(i, j) = output(img(i, j));
    endfor
endfor


   
     
#axis([0 250 0 4000])
figure(1),plot(output);
figure(2),imshow(img2);


imwrite(img2, "output.jpg", "quality", 100);

    
    
    
    
