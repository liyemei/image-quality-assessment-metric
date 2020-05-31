function metrix_value = two_image_metrix(image_A,image_F,name)
%%%  NOTES:     
%%%
%%%             algorithm                       indicator string 
%%%             ---------------------------     ---------------- 
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
%%%
metrix_name = lower(name);
reference_image = double(image_A);
distorted_image = double(image_F);
switch metrix_name
    case 'mse'
        metrix_value = metrix_mux( reference_image, distorted_image,metrix_name);
    case 'psnr'
        metrix_value = metrix_mux( reference_image, distorted_image,metrix_name);
    case 'ssim'
        metrix_value = metrix_mux( reference_image, distorted_image,metrix_name);
    case 'vif'
        metrix_value = metrix_mux( reference_image, distorted_image,metrix_name);
    case 'vifp'
        metrix_value = metrix_mux( reference_image, distorted_image,metrix_name);
    case 'uqi'
        metrix_value = metrix_mux( reference_image, distorted_image,metrix_name);
    case 'ifc'
        metrix_value = metrix_mux( reference_image, distorted_image,metrix_name);
    case 'nqm'
        metrix_value = metrix_mux( reference_image, distorted_image,metrix_name);
    case 'wsnr'
        metrix_value = metrix_mux( reference_image, distorted_image,metrix_name);
    case 'snr'
        metrix_value = metrix_mux( reference_image, distorted_image,metrix_name);
    case 'cen'
        metrix_value = cross_entropy(reference_image, distorted_image);
    case 'min'
         metrix_value = mutual_information(reference_image, distorted_image);
    case 'q0i'
         metrix_value = img_Q0(reference_image, distorted_image);
    otherwise
        metrix_value = NaN;
end