pkg load image;

# Practice 1

# load images
i = imread('tungsten_filament_shaded.tif');
s = imread('tungsten_sensor_shading.tif');

# Images can be represented as double
i = im2double(i);
s = im2double(s);

# operation
#Element-by-element right division.
m = i./s;

# show image
figure, imshow(m);
