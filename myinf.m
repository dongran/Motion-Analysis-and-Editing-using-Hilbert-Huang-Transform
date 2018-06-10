function [inf,amp] = myinf(imf,t,m,n,fs)
%INF ���̊֐��̊T�v�������ɋL�q
%   �ڍא����������ɋL�q
hx=zeros([m,n]);
for i=1:m 
hx(i,:)=hilbert(imf(i,:));
end
 x=real(hx);
 y=imag(hx);

 % amp(�U��)���Ax,y���狁�߂�
 
 A=x.^2+y.^2;
 amp=sqrt(A);

 % inf(���g��)�����߂�
 
 for i=1:m 
    xh1(i,:)=unwrap(angle(hx(i,:)));
    inf2(i,:)=fs*diff(xh1(i,:))/(2*pi);
 end

nn=zeros([m,1]);
inf=[inf2, nn];
     
%{
 
 %����t�̍��������@dt�@��p�ӂ���
 dt=diff(t);
 dt=[dt,1];
 
 dx=zeros([m,n]);
 dy=zeros([m,n]);
 
 for i=1:m 
     %dx��p�ӂ���
     tmp1=diff(x(i,:));
     tmp1=[tmp1,0];
     dx(i,:)=tmp1;
     %dy��p�ӂ���
     tmp2=diff(y(i,:));
     tmp2=[tmp2,0];
     dy(i,:)=tmp2;
  
 end
 
 ddx=zeros([m,n]);
 ddy=zeros([m,n]);

 % dx/dt �� dx/dy��p�ӂ���
 for i=1:m 
 ddx(i,:)=dx(i,:)./dt;
 ddy(i,:)=dy(i,:)./dt;
 end
 
 omega=zeros([m,n]);
 inf=zeros([m,n]);
 
 % inf�i���g���j ���v�Z����
 for i=1:m 
 omega(i,:)=x(i,:).*ddy(i,:)-y(i,:).*ddx(i,:);
 inf(i,:)= (omega(i,:)./A(i,:))/(2*pi);
 end
 
 %2*pi�ŕ��̎��g���𐳂ɖ߂�
 for i=1:m 
     for j=1:n
        while (inf(i,j)<0)
          inf(i,j)=inf(i,j)+2*pi;
         end
     end
 end     
 
 %}
end

