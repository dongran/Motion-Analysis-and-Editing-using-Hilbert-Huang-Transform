fra=1/frame;

 for imfnum=1:m
    for i=start_j:end_j
    a=[str,num2str(i)];
    eval(['tmpimf =' a ';']);
    aa(:,i)=tmpimf(imfnum,:)+tmpimf(m+1,:);
    end

    %position
    eval(['aa(:,1:3)=org(start:ended,1:3);']);
    aa(:,3)=aa(:,3)+100*imfnum;

    b=[str,num2str(imfnum)];
    eval([export,'(aa,b,n,',num2str(fra,3),');']);
    %exportS(aa,b,n,1/frame);

 end

 %trend
imfnum=m+1;
for i=start_j:end_j
    a=[str,num2str(i)];
    eval(['tmpimf =' a ';']);
    aa(:,i)=tmpimf(imfnum,:);
end

%position
eval(['aa(:,1:3)=org(start:ended,1:3);']); 

aa(:,3)=aa(:,3)+100*imfnum;

%b=[str,num2str(imfnum)];
trend='trend';
eval([export,'(aa,trend,n,',num2str(fra,3),');']);
%exportS(aa,b,n,1/frame);


 %add all
 for i=start_j:end_j
     c=[str,num2str(i)];
     eval(['tmpimf2 =' c ';']);
     bb(:,i)=sum(tmpimf2(1:m+1,:),1)';
     eval(['bb(:,1:3)=org(start:ended,1:3);']);
 end
 b=[str,'0'];

 eval([export,'(bb,b,n,',num2str(fra,3),');']);