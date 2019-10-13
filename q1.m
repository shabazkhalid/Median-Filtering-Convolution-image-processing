fbf=[1 1 1 1 1;1 1 1 1 1;1 1 1 1 1];
nbn=[1 1 1 1 1 1 1 1 1;1 1 1 1 1 1 1 1 1;1 1 1 1 1 1 1 1 1 ];
tbt=[2 2 2;2 2 2;2 2 2];

img1=imread('cman_small_saltnpepper.tif','tif');

[m,n] = size(tbt);
m1 = medfilt2(img1,[m n]);  %remove the noise from the picture
%figure, imshow(m1);



[m,n] = size(fbf);
m2 = medfilt2(img1,[m n]);  %remove remaining noise from the image and blur it
%figure, imshow(m2);


[m,n] = size(nbn);
m3 = medfilt2(img1,[m n]);    % more blur the picture 
%figure, imshow(m3);


%(b)

img1=imread('cman_small_saltnpepper.tif','tif');
imshow(img1);
avgim = filter2(fspecial('average',3),img1)/255;  %image is less blur and some noisy

figure , imshow(avgim);

avgim2 = filter2(fspecial('average',5),img1)/255;  %image is more blur and more noisy

figure , imshow(avgim2);

avgim3 = filter2(fspecial('average',9),img1)/255;   %image is higly blur that difficult to see

figure , imshow(avgim3);


tbt=[2 2 2;2 2 2;2 2 2];

img1=imread('cman_small_saltnpepper.tif','tif');
[m,n] = size(tbt);
m1 = medfilt2(img1,[m n]);  %remove the noise from the picture
m2 = medfilt2(m1,[m n]);
m3 = medfilt2(m2,[m n]);
%figure, imshow(m1);



