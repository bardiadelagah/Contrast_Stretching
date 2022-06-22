
im = imread('9.jpg');

s = 5;
m = 30;
p1 = 1./(1+(m./(double(im)+eps)).^s);

s = 2;
m = 30;
p2 = 1./(1+(m./(double(im)+eps)).^s);

figure(1), 
subplot(2,1,1),imshow(p1)
subplot(2,1,2),imshow(p2)

s = 5;
m = 240;
p3 = 1./(1+(m./(double(im)+eps)).^s);

s = 2;
m = 240;
p4 = 1./(1+(m./(double(im)+eps)).^s);

figure(2), 
subplot(2,1,1),imshow(p3)
subplot(2,1,2),imshow(p4)


figure(3),
subplot(2,3,1), imshow(im),title('orginal image')
subplot(2,3,2), imshow(p1),title('s=5 m=30')
subplot(2,3,3), imshow(p2),title('s=2 m=30')
subplot(2,3,4), imshow(im),title('orginal image')
subplot(2,3,5), imshow(p3),title('s=5 m=240')
subplot(2,3,6), imshow(p4),title('s=2 m=240')
