function [ inf_WAFA ] = WAFA(inf,amp,m)
%WAFA この関数の概要をここに記述
%   詳細説明をここに記述

%mは窓の長さ

N=size(inf,2); 

b=1;
for k=1:(m-1)/2
    
    e=k+(m-1)/2;
    
    inf_WAFA(1,k)=sum(inf(b:e).*amp(b:e))/(sum(amp(b:e)));  
    
end

for  k=(m+1)/2:(2*N-1-m)/2
    
     b=k-(m-1)/2;
     e=k+(m-1)/2;
     
     inf_WAFA(1,k)=sum(inf(b:e).*amp(b:e))/(sum(amp(b:e)));  
     
end

e=N;
for  k=(2*N+1-m)/2:N
        
     b=k-(m-1)/2;    
     inf_WAFA(1,k)=sum(inf(b:e).*amp(b:e))/(sum(amp(b:e)));  
     
end


end

