function [ ] = hhtplot(t,inf,amp,num,a)
%HHTPLOT この関数の概要をここに記述
%   詳細説明をここに記述

[m,n]=size(inf);

if a==1
    
    backColor = [0,0,0.562500000000000];
    for i=1:m 
        scatter(t,inf(i,:),num,amp(i,:),'filled');
        set(gca,'color', backColor);
        hold on;
    end

    %axis([0 1 0 120]);
    set(gcf,'color','white')
    set(gca,'FontName','Times New Roman','FontSize',20)
    %title('','Times New Roman','FontWeight','Bold','FontSize',24)
    xlabel('Time','FontName','Times New Roman','FontSize',40)
    ylabel('Frequency','FontName','Times New Roman','FontSize',40,'Rotation',90)

    colorbar
    colormap(jet);

else
    
    backColor = [0,0,0.562500000000000];
    for i=1:m 
        scatter(t,inf(m-i+1,:),num,amp(m-i+1,:),'filled');
        set(gca,'color', backColor);
        hold on;
    end

    %axis([0 1 0 120]);
    set(gcf,'color','white')
    set(gca,'FontName','Times New Roman','FontSize',20)
    %title('','Times New Roman','FontWeight','Bold','FontSize',24)
    xlabel('Time','FontName','Times New Roman','FontSize',40)
    ylabel('Frequency','FontName','Times New Roman','FontSize',40,'Rotation',90)

    colorbar
    colormap(jet);

    
end




