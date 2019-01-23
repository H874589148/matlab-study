%动画1--一个点在曲线上移动
clf

  aviObj = VideoWriter('test.avi');
  open(aviObj);

t=0:0.05:4*pi;
N = length(t);
y =  sin(2*t).*exp(-t/2);
h=plot(t , y);
hold on
hp = plot(t(1),y(1),'marker','o','markersize',10,'markerfacecolor','r');
for k=1:N
  set(hp,'xdata',t(k),'ydata',y(k));
  drawnow
     F = getframe;
    %加入avi对象中
   % aviobj = addframe(aviobj,F);
   writeVideo(aviObj,F);
     
    %转成gif图片,只能用256色
    im = frame2im(F);
    [I,map] = rgb2ind(im,256);
    %写入 GIF89a 格式文件    
    if k == 1;
        imwrite(I,map,'test.gif','GIF', 'Loopcount',inf,'DelayTime',0.1);
    else
        imwrite(I,map,'test.gif','GIF','WriteMode','append','DelayTime',0.1);
    end    
end
close(fig);
%关闭avi对象
aviobj = close(aviobj);
