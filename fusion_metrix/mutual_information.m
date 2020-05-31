function MA = mutual_information(A,F)
%--------------------º∆À„ª•–≈œ¢
[m,n] = size(A);
H_A=imhist(uint8(A));PA = H_A./(m*n);
H_F=imhist(uint8(F));PF = H_F./(m*n);
Jh = zeros(256,256);
for x=1:m
    for y=1:n
        Jh(A(x,y)+1,F(x,y)+1)=Jh(A(x,y)+1,F(x,y)+1)+1;
    end
end
Jh= Jh./(m*n);
MA = 0;
for i=1:256
    for j=1:256
        MA1 = Jh(i,j).*log2(Jh(i,j)/(PA(i).*PF(j)));
        if ~isnan(MA1)&&~isinf(MA1)
            MA = MA + MA1;
        end
    end
end 