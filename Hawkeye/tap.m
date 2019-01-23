hp1 = uicontrol('style','pushbutton');
set(hp1,'position',[100,100,200,200]);
set(hp1,'string','按一下');
set(hp1,'fontsize',24);
cmd = 'disp("你按了我一下")';
set(hp1,'callback',cmd);