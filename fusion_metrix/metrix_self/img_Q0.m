function Qaf = img_Q0(A,F)
%----------------计算A与F之间的Q0指标
A = double(A);
F = double(F);
[m,n] = size(A);
mA = mean(A(:));
mB = mean(A(:));
mF = mean(F(:));
deta_A = std(A(:));
deta_F = std(F(:));
deta_AF = sum((A(:) - mA).* (F(:) - mF))./(m*n-1);
Qaf = 4*deta_AF*mA*mF./((deta_A.^2 + deta_F.^2).*(mA.^2 + mF.^2));