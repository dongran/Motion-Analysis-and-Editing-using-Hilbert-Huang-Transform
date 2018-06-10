function [] = exportP(a,b,n,fs)
name=[b,'.bvh'];
fid=fopen(name,'wt');%写入文件路径

fprintf(fid,'HIERARCHY\n'); 
fprintf(fid,'ROOT Hips\n');
fprintf(fid,'{\n');
fprintf(fid,' OFFSET 0.000000 0.000000 0.000000\n');
fprintf(fid,' CHANNELS 6 Xposition Yposition Zposition Yrotation Xrotation Zrotation\n');
fprintf(fid,' JOINT Chest\n');
fprintf(fid,' {\n');
fprintf(fid,'  OFFSET 0.000000 10.678932 0.006280\n');
fprintf(fid,'  CHANNELS 3 Yrotation Xrotation Zrotation\n');
fprintf(fid,'  JOINT Chest2\n');
fprintf(fid,'  {\n');
fprintf(fid,'   OFFSET 0.000000 10.491159 -0.011408\n');
fprintf(fid,'   CHANNELS 3 Yrotation Xrotation Zrotation\n');
fprintf(fid,'   JOINT Chest3\n');
fprintf(fid,'   {\n');
fprintf(fid,'    OFFSET 0.000000 9.479342 0.000000\n');
fprintf(fid,'    CHANNELS 3 Yrotation Xrotation Zrotation\n');
fprintf(fid,'    JOINT Chest4\n');
fprintf(fid,'    {\n');
fprintf(fid,'     OFFSET 0.000000 9.479342 0.000000\n');
fprintf(fid,'     CHANNELS 3 Yrotation Xrotation Zrotation\n');
fprintf(fid,'     JOINT Neck\n');
fprintf(fid,'     {\n');
fprintf(fid,'      OFFSET 0.000000 13.535332 0.000000\n');
fprintf(fid,'      CHANNELS 3 Yrotation Xrotation Zrotation\n');
fprintf(fid,'      JOINT Head\n');
fprintf(fid,'      {\n');
fprintf(fid,'       OFFSET 0.000000 8.819083 -0.027129\n');
fprintf(fid,'       CHANNELS 3 Yrotation Xrotation Zrotation\n');
fprintf(fid,'       End Site\n');
fprintf(fid,'       {\n');
fprintf(fid,'        OFFSET 0.000000 16.966594 -0.014170\n');
fprintf(fid,'       }\n');
fprintf(fid,'      }\n');
fprintf(fid,'     }\n');
fprintf(fid,'     JOINT RightCollar\n');
fprintf(fid,'     {\n');
fprintf(fid,'      OFFSET -3.012546 7.545150 0.000000\n');
fprintf(fid,'      CHANNELS 3 Yrotation Xrotation Zrotation\n');
fprintf(fid,'      JOINT RightShoulder\n');
fprintf(fid,'      {\n');
fprintf(fid,'       OFFSET -13.683099 0.000000 0.000000\n');
fprintf(fid,'       CHANNELS 3 Yrotation Xrotation Zrotation\n');
fprintf(fid,'       JOINT RightElbow\n');
fprintf(fid,'       {\n');
fprintf(fid,'        OFFSET -26.359998 0.000000 0.000000\n');
fprintf(fid,'        CHANNELS 3 Yrotation Xrotation Zrotation\n');
fprintf(fid,'        JOINT RightWrist\n');
fprintf(fid,'        {\n');
fprintf(fid,'         OFFSET -21.746691 0.000000 0.008601\n');
fprintf(fid,'         CHANNELS 3 Yrotation Xrotation Zrotation\n');
fprintf(fid,'         End Site\n');
fprintf(fid,'         {\n');
fprintf(fid,'          OFFSET -16.348058 0.000000 0.000000\n');
fprintf(fid,'         }\n');
fprintf(fid,'        }\n');
fprintf(fid,'       }\n');
fprintf(fid,'      }\n');
fprintf(fid,'     }\n');
fprintf(fid,'     JOINT LeftCollar\n');
fprintf(fid,'     {\n');
fprintf(fid,'      OFFSET 3.012546 7.545150 0.000000\n');
fprintf(fid,'      CHANNELS 3 Yrotation Xrotation Zrotation\n');
fprintf(fid,'      JOINT LeftShoulder\n');
fprintf(fid,'      {\n');
fprintf(fid,'       OFFSET 13.683099 0.000000 0.000000\n');
fprintf(fid,'       CHANNELS 3 Yrotation Xrotation Zrotation\n');
fprintf(fid,'       JOINT LeftElbow\n');
fprintf(fid,'       {\n');
fprintf(fid,'        OFFSET 26.359998 0.000000 0.000000\n');
fprintf(fid,'        CHANNELS 3 Yrotation Xrotation Zrotation\n');
fprintf(fid,'        JOINT LeftWrist\n');
fprintf(fid,'        {\n');
fprintf(fid,'         OFFSET 21.746691 0.000000 0.008601\n');
fprintf(fid,'         CHANNELS 3 Yrotation Xrotation Zrotation\n');
fprintf(fid,'         End Site\n');
fprintf(fid,'         {\n');
fprintf(fid,'          OFFSET 16.348058 0.000000 0.000000\n');
fprintf(fid,'         }\n');
fprintf(fid,'        }\n');
fprintf(fid,'       }\n');
fprintf(fid,'      }\n');
fprintf(fid,'     }\n');
fprintf(fid,'    }\n');
fprintf(fid,'   }\n');
fprintf(fid,'  }\n');
fprintf(fid,' }\n');
fprintf(fid,' JOINT RightHip\n');
fprintf(fid,' {\n');
fprintf(fid,'  OFFSET -8.622479 -0.030774 -0.003140\n');
fprintf(fid,'  CHANNELS 3 Yrotation Xrotation Zrotation\n');
fprintf(fid,'  JOINT RightKnee\n');
fprintf(fid,'  {\n');
fprintf(fid,'   OFFSET 0.000000 -37.209160 -0.002630\n');
fprintf(fid,'   CHANNELS 3 Yrotation Xrotation Zrotation\n');
fprintf(fid,'   JOINT RightAnkle\n');
fprintf(fid,'   {\n');
fprintf(fid,'    OFFSET 0.000000 -37.343279 -0.058479\n');
fprintf(fid,'    CHANNELS 3 Yrotation Xrotation Zrotation\n');
fprintf(fid,'    JOINT RightToe\n');
fprintf(fid,'    {\n');
fprintf(fid,'     OFFSET 0.000000 -8.903465 15.088070\n');
fprintf(fid,'     CHANNELS 3 Yrotation Xrotation Zrotation\n');
fprintf(fid,'     End Site\n');
fprintf(fid,'     {\n');
fprintf(fid,'      OFFSET 0.000000 -1.471739 6.884388\n');
fprintf(fid,'     }\n');
fprintf(fid,'    }\n');
fprintf(fid,'   }\n');
fprintf(fid,'  }\n');
fprintf(fid,' }\n');
fprintf(fid,' JOINT LeftHip\n');
fprintf(fid,' {\n');
fprintf(fid,'  OFFSET 8.622479 -0.030774 -0.003140\n');
fprintf(fid,'  CHANNELS 3 Yrotation Xrotation Zrotation\n');
fprintf(fid,'  JOINT LeftKnee\n');
fprintf(fid,'  {\n');
fprintf(fid,'   OFFSET 0.000000 -37.209160 -0.002630\n');
fprintf(fid,'   CHANNELS 3 Yrotation Xrotation Zrotation\n');
fprintf(fid,'   JOINT LeftAnkle\n');
fprintf(fid,'   {\n');
fprintf(fid,'    OFFSET 0.000000 -37.343279 -0.058479\n');
fprintf(fid,'    CHANNELS 3 Yrotation Xrotation Zrotation\n');
fprintf(fid,'    JOINT LeftToe\n');
fprintf(fid,'    {\n');
fprintf(fid,'     OFFSET 0.000000 -8.903465 15.088070\n');
fprintf(fid,'     CHANNELS 3 Yrotation Xrotation Zrotation\n');
fprintf(fid,'     End Site\n');
fprintf(fid,'     {\n');
fprintf(fid,'      OFFSET 0.000000 -1.471739 6.884388\n');
fprintf(fid,'     }\n');
fprintf(fid,'    }\n');
fprintf(fid,'   }\n');
fprintf(fid,'  }\n');
fprintf(fid,' }\n');
fprintf(fid,'}\n');
fprintf(fid,'MOTION\n');
fprintf(fid,'Frames:	%d\n', n);
fprintf(fid,'Frame Time:	%4.6f\n',fs); 
%fprintf(fid,'Frames: 150\n');          %フレーム数は毎回修正が必要
%fprintf(fid,'Frame Time: 0.025000\n');



[m,n]=size(a);                   %?取矩?的大小，p?要?出的矩?
for i=1:1:m
    for j=1:1:n
        if j==n                    %如果一行的个数?到n个??行，否?空格
        fprintf(fid,'%4.6f\n',a(i,j)); 
        else
        fprintf(fid,'%4.6f\t',a(i,j));
        end
    end
end
fclose(fid); 

end

