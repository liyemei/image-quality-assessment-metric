# Metrics: 
```
%%%
%%%             algorithm                       indicator string 
%%%             ---------------------------     ---------------- 
%%%             shannon entropy                 'SEN'            
%%%             mean vaue                       'ME'          
%%%             average gradient                'AVG'
%%%             standard deviation              'STD'
%%%             Perceptual Sharpness Index      'psi'
%%%             mean-squared error              'MSE'            
%%%             peak signal-to-noise ratio      'PSNR'          
%%%             structural similarity index     'SSIM'           
%%%             visual information fidelity     'VIF'            
%%%             pixel-based VIF                 'VIFP'           
%%%             universal quality index         'UQI'            
%%%             image fidelity criterion        'IFC'           
%%%             noise quality measure           'NQM'            
%%%             weighted signal-to-noise ratio  'WSNR'           
%%%             signal-to-noise ratio           'SNR'
%%%             cross entropy                   'CEN'
%%%             mutual inforamtion              'MIN'
%%%             Q0 index                        'Q0I'
%%%             Qabf index                      'QABF'
```

# Code usage：

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
