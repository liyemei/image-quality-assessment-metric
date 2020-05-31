# Usage：


```
clc
clear all
tic

A=imread('lytro-01-A.jpg');
F=imread('lytro-01-B.jpg');
A=rgb2gray(A);
F=rgb2gray(F);
A=imresize(A,[256,256]);
F=imresize(F,[256,256]);

cd C:\Users\liyemei\Desktop\metrics\fusion_metrix
pnsr=fusion_metrix(A,F,'psi');
vif=fusion_metrix(A,F,'VIF');
cd...
```



