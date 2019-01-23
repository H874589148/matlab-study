%画一个五角星
theta = [pi/2:2*2*pi/5:pi/2+5*2*2*pi/5];%五个点，第一个点在pi/2
x = cos(theta);
y = sin(theta);
hp = plot(x,y,'linewidth',2,'color',[1 0 0]);

axis equal
axis off
shg

set(gcf,'menubar','none');
set(gcf,'numbertitle','off');
set(gcf,'color','k');