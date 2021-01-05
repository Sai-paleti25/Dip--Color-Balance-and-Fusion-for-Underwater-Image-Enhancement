I= imread('dimg1.jpg');
%I = ind2gray(X,map);
J = imadjust(I,[],[],1.3);
imshowpair(I,J,'montage')
imshow(J);