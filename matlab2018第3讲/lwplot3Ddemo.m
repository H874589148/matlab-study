%% plot3
%三维曲线绘制 x(t), y(t),z(t)

t = 0: pi/20 : 8*pi;
x = sin(t);
y = cos(t);
z = 1.5*t;

hp = plot3(x,y,z);
set(hp, 'linewidth',2 , 'color', 'b') ;
grid on
axis square
shg


%% 
%介绍meshgrid函数
clf

gx =  [1 2 3];    % 1*3
gy = [ -2 : 2];    % 1*5
[ x, y ] = meshgrid(gx,gy)
 whos x y
 
 hp = plot(x ,y, 'o' ,'markersize',10,'markerfacecolor','k'); 
  grid on
  set(gca,'xtick',gx,'ytick',gy,'fontsize', 16);
  axis equal
  axis tight
  shg

%% meshgrid  peaks
% 空间曲面 : z = f(x,y)
[x, y ] = meshgrid(-3 : 0.1 : 3);
z = peaks(x,y);
mesh(x,y,z)

%% meshgrid  sinc函数
[x, y ] = meshgrid(-10 : 0.1 : 10);
r  = (x.^2 + y.^2).^0.5;
z = sin(r)./r ; 
mesh(x,y,z)
%axis equal
shg

%%
%这是一个绘制球体的脚本
r=1;t=0:pi/40:2*pi;a=0:pi/20:pi;
[t1,a1]=meshgrid(t,a);
x=r*sin(a1).*cos(t1);
y=r*sin(a1).*sin(t1);
z=r*cos(a1);
surf(x,y,z);
axis equal;
axis off;
shading interp
colormap jet ; % summer gray...
