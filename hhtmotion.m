clear;

PI=3.14;

%Data Preprocessing
%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%BVH motion data
load aachan.dat;
start_j=1;  %first data
end_j=72;   %end data
numC=[start_j:end_j];
k=size(numC,2);

frame=40; %frame rate

%decomposition window
start1=2240; 
ended1=2360;

%For hilbert transform edge effect
plus=frame/2;
start=start1-plus;   
ended=ended1+plus;
start_t1=start1/frame;
ended_t1=ended1/frame;
start_t=start/frame;
ended_t=ended/frame;
t=linspace(start_t,ended_t,ended-start+1);

tmp=zeros(ended-start+1,k);
for i=1:k
    tmp(1:ended-start+1,i)=aachan(start:ended,numC(1,i));
end

%Motion multivariate empirical mode decomposition
%%%%%%%%%%%%%%%%%%%%%%%%%%%%
imfa = memd(tmp);
for i=start_j:end_j
a=['imfa_',num2str(i)];
%eval([a '= reshape(imfa(i-3,:,:),size(imfa,2),length(tmp));'])% imfs corresponding to 1st component
eval([a '= reshape(imfa(i,:,:),size(imfa,2),length(imfa));'])% imfs corresponding to 1st component
end

[m,n]=size(imfa_4);     %mはIMF+トレンドの数　nはデータ数
m=m-1;

%hilbert transform
%Instantaneous frequency and amplitude

[infa_y,ampa_y]=myinf(imfa_4(1:m,:),t,m,n,frame); %Hip Y
[infa_x,ampa_x]=myinf(imfa_5(1:m,:),t,m,n,frame); %Hip X
[infa_z,ampa_z]=myinf(imfa_6(1:m,:),t,m,n,frame); %Hip Z

%Hip Y spectrum 
plotamp=ampa_y(:,1+plus:end-plus);
plotinf=infa_y(:,1+plus:end-plus);

%WAFA smoothing
window=13;
for i=1:m
    plotinf(i,:)=WAFA(plotinf(i,:),plotamp(i,:),window);
end

%hht spectrum
maxf=10;
num=100;
hhtplot(t(:,plus+1:end-plus),plotinf,plotamp,num,1);
axis([start_t1 ended_t1 0 maxf]);
title('MEMD(hip θY)','FontName','Times New Roman','FontSize',30);

%Average frequencies for ecah IMF
amp=plotamp;
inf=plotinf;
avg=(sum(amp.*inf,2)./sum(amp,2));

%decomposited Motion export to BVH
str='imfa_';
export='exportP'; 
org=aachan;%original position
run('exallimfT.m');