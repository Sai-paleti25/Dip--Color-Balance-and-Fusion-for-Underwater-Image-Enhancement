function [output] = grayworld5(~)
I=imread('dimg.jpg');
imshow(I);
input=imread('uwi.jpg');
dim=size(input,3);
input=im2uint8(input);
output=zeros(size(input));    
if (dim==1 || dim==3)
    for j=1:dim;
        scalVal=sum(sum(input(:,:,j)))/numel(input(:,:,j));
        output(:,:,j)=input(:,:,j)*(127.5/scalVal);
    end
    output=uint8(output);
    figure;
    imshow(output);
    %imshowpair(I,output,'MONTAGE');
else 
    error('myApp:argChk','Input error. Matrix dimensions do not fit.');
end