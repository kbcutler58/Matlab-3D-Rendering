%%
% h1=trisurf(faces,vertices(:,1),vertices(:,2),vertices(:,3),Color_Vector,'EdgeColor','none','LineStyle','none'),title(name),xlabel('X axis'), ylabel('Y axis'), view([0 270])


% h1=trisurf(faces,vertices(:,1),vertices(:,2),vertices(:,3),Color_Vector,'EdgeColor','none','LineStyle','none'),title(name),xlabel('X axis'), ylabel('Y axis'), view([0 270])
videofolder = 'C:\Users\Kyle\Documents\GitHub\Matlab-3D-Rendering\OutputVideo';
cd(videofolder);

figure('units','normalized','outerposition',[0 0 1 1])
h1=trisurf(faces,vert(1,:),vert(2,:),vert(3,:),colorData2,'EdgeColor','none','LineStyle','none');
title(imagelabel),xlabel('X axis'), ylabel('Y axis'), view(2)
set(gca,'clim',colorbaroriginal)
colorbar
hlight=camlight('headlight','infinite');
material dull;
% set(h1,'PaperPositionMode','auto')
%t=0:.1:2.4;
t=0.25*ones(1,100);
dx = [t -t -t t];
dy = 0;
axis off
axis vis3d
% title('8714-T01 Baseline');

lighting gouraud;
set(gcf,'Renderer','zbuffer');
videoname = strcat('C:\Users\Kyle\Documents\GitHub\Matlab-3D-Rendering\OutputVideo\',imagelabel);
daObj=VideoWriter(videoname,'Motion JPEG AVI');

open(daObj);
for i = 1:length(dx);
    camdolly(dx(i),0,0,'fixtarget')
    camproj('perspective')
    axis vis3d
    drawnow
    writeVideo(daObj,getframe(gcf));
end

close(daObj);
cd(folder2)
%%
%     axis vis3d
%     camdolly(5*dx(i),0,0,'fixtarget')
%     camproj('perspective')
%     drawnow