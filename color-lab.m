% MATLAB code to display the red, green and blue 
% color planes of a color image 

% read the image 
I = imread('lenna.png'); 

% rows and columns in the image 
r = size(I, 1); 
c = size(I, 2); 

% creating zero matrices 
R = zeros(r, c, 3); 
G = zeros(r, c, 3); 
B = zeros(r, c, 3); 

% storing the corresponding color plane 

% red plane 
R(:, :, 1) = I(:, :, 1); 

% green plane 
G(:, :, 2) = I(:, :, 2); 

% blue plane 
B(:, :, 3) = I(:, :, 3); 

% displaying the images 
figure, imshow(uint8(R)); 
figure, imshow(uint8(G)); 
figure, imshow(uint8(B)); 
