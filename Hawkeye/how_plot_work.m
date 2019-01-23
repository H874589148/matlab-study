clf

f0 = 1;
fs = 10;
t = 0:1/fs:1;
x = sin(2*pi*f0*t);
x1 = x;

plot(t,x,'o','markersize',10,'markerfacecolor','r')
set(gca,'color','k');
hold on

for k = 2:length(t)
    line(t(1:k),x(1:k),'linewidth',3,'color','y');
    disp('胡睿，请按任意键继续...');
    pause
end