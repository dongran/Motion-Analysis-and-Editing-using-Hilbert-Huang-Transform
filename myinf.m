function [inf,amp] = myinf(imf,t,m,n,fs)
%INF この関数の概要をここに記述
%   詳細説明をここに記述
hx=zeros([m,n]);
for i=1:m 
hx(i,:)=hilbert(imf(i,:));
end
 x=real(hx);
 y=imag(hx);

 % amp(振幅)を、x,yから求める
 
 A=x.^2+y.^2;
 amp=sqrt(A);

 % inf(周波数)を求める
 
 for i=1:m 
    xh1(i,:)=unwrap(angle(hx(i,:)));
    inf2(i,:)=fs*diff(xh1(i,:))/(2*pi);
 end

nn=zeros([m,1]);
inf=[inf2, nn];
     
%{
 
 %時刻tの差分を取る　dt　を用意する
 dt=diff(t);
 dt=[dt,1];
 
 dx=zeros([m,n]);
 dy=zeros([m,n]);
 
 for i=1:m 
     %dxを用意する
     tmp1=diff(x(i,:));
     tmp1=[tmp1,0];
     dx(i,:)=tmp1;
     %dyを用意する
     tmp2=diff(y(i,:));
     tmp2=[tmp2,0];
     dy(i,:)=tmp2;
  
 end
 
 ddx=zeros([m,n]);
 ddy=zeros([m,n]);

 % dx/dt と dx/dyを用意する
 for i=1:m 
 ddx(i,:)=dx(i,:)./dt;
 ddy(i,:)=dy(i,:)./dt;
 end
 
 omega=zeros([m,n]);
 inf=zeros([m,n]);
 
 % inf（周波数） を計算する
 for i=1:m 
 omega(i,:)=x(i,:).*ddy(i,:)-y(i,:).*ddx(i,:);
 inf(i,:)= (omega(i,:)./A(i,:))/(2*pi);
 end
 
 %2*piで負の周波数を正に戻す
 for i=1:m 
     for j=1:n
        while (inf(i,j)<0)
          inf(i,j)=inf(i,j)+2*pi;
         end
     end
 end     
 
 %}
end

