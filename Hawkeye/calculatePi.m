% direct by Hawkeye-----2018-07-04-----ÃÉÌØ¿¨ÂŞcalculate Pi

N=10000;                     %all chance
x=2*rand(2,N)-1;             %rand number
hit=x(1,:).^2+x(2,:).^2;     %hits
hits=length(find(hit<=1));   %in cycle
myPi=4*hits/N                %calculate