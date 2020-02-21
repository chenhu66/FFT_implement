% run fft2 and ifft2 in matlab and compare with results from c++ code
close all

img = imread('../image/lenna.png');
img = double(img);
imgF = fft2(img);
imgR = round(real(ifft2(imgF)));

figure
subplot(1,3,1)
imshow(img/255);
subplot(1,3,2)
imshow(real(imgF));
subplot(1,3,3);
imshow(imgR/255)

sad = mean(abs(imgR(:)-img(:)))