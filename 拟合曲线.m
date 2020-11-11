syms t 
format long
data = importdata('D:\\ybp2.txt');
x = 1:1:10000;
x = x';
y = data(1:10000);
f=fittype('0.000072*exp(-0.000165*t)*sin(0.01815*t)+kesi','independent','t','coefficients',{'kesi'});
opt=fitoptions(f);
opt.StartPoint=[1e-8];
[cfun,g]=fit(x,y,f);
cfun
xi=1:.1:10000;
yi=cfun(xi);
plot(x,y,'r*',xi,yi,'b-');