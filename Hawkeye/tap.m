hp1 = uicontrol('style','pushbutton');
set(hp1,'position',[100,100,200,200]);
set(hp1,'string','��һ��');
set(hp1,'fontsize',24);
cmd = 'disp("�㰴����һ��")';
set(hp1,'callback',cmd);