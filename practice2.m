pkg load image;

# Practice 2

# load images
i = imread('pollen.jpg');
#matrix
s = zeros(889,889, 'uint8');

#histogram
imhist(i);

#estimative

x1 = 0;
x2 = 0;
w1 = 90;
w2 = 150;
z1 = 30;
z2 = 220;

# decision
a1 = 256;
a2 = 256;
a = zeros(1, 256);

# coordenates 1,2,3

m1 = (z1-x2)/(w1-x1);
for  k = x1+1: w1
    a(k) = x2 + m1 * (k - x1);
endfor

m2 = (z2-z1)/(w2-w1);
for  k = w1+1: w2
    a(k) = z1 + m2 * (k - w1);
endfor

m3 = (a2-z2)/(a1-w2);
for  k = w2+1: a1
    a(k) = z2 + m3 * (k - w2);
endfor


# output

s = [1:256];
plot(s, a);


for k = 1:889
    for k2 = 1:889
        m(k,k2) = a(i(k,k2));
    endfor
endfor

imwrite(m, 'output.jpg');
imwrite(m, 'output.jpg', 'quality', 95);
imshow(m);
