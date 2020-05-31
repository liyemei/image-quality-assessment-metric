function metrix_value = fusion_metrix(A,F,name)
%%%  NOTES:     
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
metrix_name = lower(name);
reference_imageA = double(A);
distorted_image = double(F);
switch metrix_name
    case 'sen'
        metrix_value = one_image_metrix(distorted_image,metrix_name);
    case 'me'
        metrix_value = one_image_metrix(distorted_image,metrix_name); 
    case 'avg'
        metrix_value = one_image_metrix(distorted_image,metrix_name);    
    case 'std'
        metrix_value = one_image_metrix(distorted_image,metrix_name);  
    case 'psi'
        metrix_value = one_image_metrix(distorted_image,metrix_name); 
 %----------------------------------------------------------------------       
    case 'mse'
       metrix_value = two_image_metrix(reference_imageA,distorted_image,metrix_name);

    case 'psnr'
        metrix_value = two_image_metrix(reference_imageA,distorted_image,metrix_name);
    case 'ssim'
        metrix_value = two_image_metrix(reference_imageA,distorted_image,metrix_name);

    case 'vif'
         metrix_value = two_image_metrix(reference_imageA,distorted_image,metrix_name);
      
    case 'vifp'
         metrix_value = two_image_metrix(reference_imageA,distorted_image,metrix_name);
       
    case 'uqi'
         metrix_value = two_image_metrix(reference_imageA,distorted_image,metrix_name);
       
    case 'ifc'
        metrix_value = two_image_metrix(reference_imageA,distorted_image,metrix_name);
      
    case 'nqm'
         metrix_value = two_image_metrix(reference_imageA,distorted_image,metrix_name);
      
    case 'wsnr'
        metrix_value = two_image_metrix(reference_imageA,distorted_image,metrix_name);
      
    case 'snr'
        metrix_value = two_image_metrix(reference_imageA,distorted_image,metrix_name);
      
    case 'cen'
        metrix_value = two_image_metrix(reference_imageA,distorted_image,metrix_name);
       
    case 'min'
        metrix_value = two_image_metrix(reference_imageA,distorted_image,metrix_name);
       
    case 'q0i'
        metrix_value = two_image_metrix(reference_imageA,distorted_image,metrix_name);
    otherwise
        metrix_value = NaN;
end
