a = imread('dimg1.jpg');
imshow(a), title('Original Image');
b = imsharpen(a,'Radius',2.5,'Amount',2);
figure;
imshow(b);
title('Sharpened Image');
imshowpair(a,b,'MONTAGE')