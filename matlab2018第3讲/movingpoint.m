%����1--һ�������������ƶ�
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
    %����avi������
   % aviobj = addframe(aviobj,F);
   writeVideo(aviObj,F);
     
    %ת��gifͼƬ,ֻ����256ɫ
    im = frame2im(F);
    [I,map] = rgb2ind(im,256);
    %д�� GIF89a ��ʽ�ļ�    
    if k == 1;
        imwrite(I,map,'test.gif','GIF', 'Loopcount',inf,'DelayTime',0.1);
    else
        imwrite(I,map,'test.gif','GIF','WriteMode','append','DelayTime',0.1);
    end    
end
close(fig);
%�ر�avi����
aviobj = close(aviobj);
