function CEA = cross_entropy(A,F)
[m,n] = size(A);
H_A=imhist(uint8(A));PA = H_A./(m*n);
H_F=imhist(uint8(F));PF = H_F./(m*n);
CE = PA.*log2(PA./PF);
CE(isnan(CE)) = [];
CE(isinf(CE)) = [];
CEA = sum(CE);
