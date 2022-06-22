# Contrast_Stretching

Here is an implementation of Contrast Stretching with different parameters.

## How it works

Contrast Stretching is an image processing technique with a formula as follow:

$ newimg = {1 \over {1 + ({m \over img})^s}} $

Here "img" is the original image. "m" and "s" are parameters. After the code read the image file, we apply the Contrast Stretching formula with different values for "m" and "s" parameters as follow:

```matlab
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
```

Our goal is to find details in image that has high illumination. As you can see in the picture, the area of the image in the window has high illumination, an we can't see details.

![alt text](https://github.com/bardiadelagah/Contrast_Stretching/blob/main/9.jpg)

After apply the Contrast Stretching we can see some ditails in the window. Here is image number 3 with using s=5 and m=24.
 
![alt text](https://github.com/bardiadelagah/Contrast_Stretching/blob/main/3.jpg)
