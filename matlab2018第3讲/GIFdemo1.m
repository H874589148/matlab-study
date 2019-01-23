%% 
%动画导出为avi视频文件或GIF文件
%         来自网络  https://zhidao.baidu.com/question/66297831.html
close all; clear all;

%动画部分代码
t = linspace(0,2.5*pi,40);
fact = 10*sin(t);
fig=figure;
[x,y,z] = peaks;
for k=1:length(fact)
    h = surf(x,y,fact(k)*z);
    axis([-3 3 -3 3 -80 80])
    axis off
    caxis([-90 90])
    %获取当前画面
    F = getframe(fig);
    
    %转成gif图片,只能用256色
    im = frame2im(F);
    [I,map] = rgb2ind(im,256);
    %写入 GIF89a 格式文件    
    if k == 1;
        imwrite(I,map,'test2.gif','GIF', 'Loopcount',inf,'DelayTime',1.5);
    else
        imwrite(I,map,'test2.gif','GIF','WriteMode','append','DelayTime',1.5);
    end    
end

