I=imread('uwi.jpg');
dim=size(I,3);
sai1=im2uint8(I);
%imshow(I,[]);
R=I(:,:,1);
G=I(:,:,2);
B=I(:,:,3);
Rm=mean(R);
rm1=mean(Rm);
%disp(rm1);
Gm=mean(G);
gm1=mean(Gm);
%disp(gm1);
Bm=mean(B);
bm1=mean(Bm);
%disp(bm1);
sai=double((gm1-rm1))
Irc=double(R)+double((gm1-rm1))*double((1-rm1))*double(G);
figure;
imshow(Irc,[]);
%imshowpair(I,Irc,'montage');


