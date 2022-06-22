# Contrast_Stretching

Here is an impelementation of Contrast Stretching with diffrenet parameters.

## How it works

Contrast Stretching is a technique with formalla as follow:

$ newimg = {1 \over {1 + ({m \over img})^s}} $

Here "img" is orginal image. "m" and "s" are parameters. After read the image file, we apply Contrast Stretching formula with differnt valuse for "m" and "s" parametes as follow:

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

Our goal is finding ditails in image that has difrenet ilumination in difreent erea of image. as you can see, in the picture the erea of image in window has high illumination an we can't see ditails.

![alt text](https://github.com/bardiadelagah/Contrast_Stretching/blob/main/9.jpg)

 aftter applyp Contrast Stretching we can see some ditails.
 
![alt text](https://github.com/bardiadelagah/Contrast_Stretching/blob/main/9.jpg)
