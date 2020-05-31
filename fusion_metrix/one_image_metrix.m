function metrix_value = one_image_metrix(image_F,name)
%%%  NOTES:     
%%%
%%%             algorithm                       indicator string 
%%%             ---------------------------     ---------------- 
%%%             shannon entropy                 'SEN'            
%%%             mean vaue                       'ME'          
%%%             average gradient                'AVG'
%%%             standard deviation              'STD'
%%%
metrix_name = lower(name);
distorted_image = double(image_F);
switch metrix_name
    case 'sen'
        metrix_value = entropy(uint8(distorted_image));
    case 'me'
        metrix_value = mean(distorted_image(:));
    case 'psi'
        metrix_value = PSI(uint8(distorted_image));
    case 'std'
        metrix_value = std(distorted_image(:));
    case 'avg'
        [m,n] = size(distorted_image);
        GM = zeros(m-1,n-1);
        for i=1:m-1
            for j=1:n-1
                GM(i,j) = (distorted_image(i+1,j) - distorted_image(i,j)).^2 + (distorted_image(i,j+1)-distorted_image(i,j)).^2;
            end
        end
        GM = sqrt(GM/2);
        metrix_value = sum(GM(:))/((m-1)*(n-1));
    otherwise
        metrix_value = NaN;
end