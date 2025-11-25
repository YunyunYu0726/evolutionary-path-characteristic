clear
tic
%parameter setting
N=1000;%population size
a=9;b=18;c=27;d=9;%payoff matrix A1
w=0.01;%Selection of intensity
x0=0.5;t=1000;%Initial frequency and time step
load('N1000w0.01A1.mat');%Simulated data obtained through the supplementary file code (Load mat files), noting the consistency of the parameters (i.e., N;a,b,c,d;w);40,000 simulations
X1=X(:,t);X01=X0(:,t);
ppp=(b-d)/(b-d+c-a);
P0=[];%Theoretical probability density under neutrality
P=[];%Theoretical probability density under selection
XX=[];
C=1;C1=1;
for x=0:0.01:1
    f1=a*(x+x0)/2+b*(1-(x+x0)/2);
    f2=c*(x+x0)/2+d*(1-(x+x0)/2);
    p0=1/C1*6*x0*(1-x0)*exp(-2*t/N)+30*x0*(1-x0)*(1-2*x0)*(1-2*x)*exp(-6*t/N);
    p=1/C*exp(N*w/2*(x-x0)*(f1-f2))*p0;
    P0=[P0 p0];
    P=[P p];
    XX=[XX x];
end
subplot(3,3,1)
plot(XX,P0./P0)%Theoretically gamma(x,x0)=1
hold on
plot(XX,P./P0)%Theoretically, gamma(x,x0)
hold on
Y=[X1 X01];
bins =100; %Counting by intervals
bin_space=1/bins; %Width of each bin
xtick=0:bin_space:1;
[counts,centers]=hist(Y,xtick);
Z=counts(:,1)./counts(:,2);%Probability densities (simulations) when selection intensity is non-zero/Probability density of neutrality (simulation)
plot([0:0.01:1],Z,'*');
box off
set(gca,'TickLength',[0.02,0.02])
z=ylabel('$$ \bf\it\gamma (x,x_{0})=\frac{p(x,t;x_{0})}{\tilde{p}(x,t;x_{0})} $$');
set(z,'Interpreter','latex');
title('(a)');

%Similar simulation with modified parameters
clear
tic
%parameter setting
N=1000;%population size
a=9;b=18;c=27;d=9;%payoff matrix A1
w=0.01;%Selection of intensity
x0=0.5;t=3000;%Initial frequency and time step
load('N1000w0.01A1.mat');
X2=X(:,t);X02=X0(:,t);
ppp=(b-d)/(b-d+c-a);
P0=[];
P=[];
XX=[];
C=1;
for x=0:0.01:1
    f1=a*(x+x0)/2+b*(1-(x+x0)/2);
    f2=c*(x+x0)/2+d*(1-(x+x0)/2);
    p0=6*x0*(1-x0)*exp(-2*t/N)+30*x0*(1-x0)*(1-2*x0)*(1-2*x)*exp(-6*t/N);
    p=1/C*exp(N*w/2*(x-x0)*(f1-f2))*p0;
    P0=[P0 p0];
    P=[P p];
    XX=[XX x];
end
subplot(3,3,2)
plot(XX,P0./P0)
hold on
plot(XX,P./P0)
hold on
Y=[X2 X02];
bins =100; 
bin_space=1/bins;
xtick=0:bin_space:1;
[counts,centers]=hist(Y,xtick);
Z=counts(:,1)./counts(:,2);
plot([0:0.01:1],Z,'*');
box off
set(gca,'TickLength',[0.02,0.02])
title('(b)');

clear
tic
N=1000;
a=9;b=18;c=27;d=9;
w=0.01;
x0=0.5;t=6000;
load('N1000w0.01A1.mat');
X3=X(:,t);X03=X0(:,t);
ppp=(b-d)/(b-d+c-a);
P0=[];
P=[];
XX=[];
C=1;
for x=0:0.01:1
    f1=a*(x+x0)/2+b*(1-(x+x0)/2);
    f2=c*(x+x0)/2+d*(1-(x+x0)/2);
    p0=6*x0*(1-x0)*exp(-2*t/N)+30*x0*(1-x0)*(1-2*x0)*(1-2*x)*exp(-6*t/N);
    p=1/C*exp(N*w/2*(x-x0)*(f1-f2))*p0;
    P0=[P0 p0];
    P=[P p];
    XX=[XX x];
end
subplot(3,3,3)
plot(XX,P0./P0)
hold on
plot(XX,P./P0)
hold on
Y=[X3 X03];
bins =100; 
bin_space=1/bins;
xtick=0:bin_space:1;
[counts,centers]=hist(Y,xtick);
Z=counts(:,1)./counts(:,2);
plot([0:0.01:1],Z,'*');
box off
set(gca,'TickLength',[0.02,0.02])
title('(c)');

clear
tic
%parameter setting
N=1000;%population size
a=20;b=1;c=1;d=20;%payoff matrix A2
w=0.01;%Selection of intensity
x0=0.5;t=1000;%Initial frequency and time step
load('N1000w0.01A2.mat');
X4=X(:,t);X04=X0(:,t);
ppp=(b-d)/(b-d+c-a);
P0=[];
P=[];
XX=[];
C=1;
for x=0:0.01:1
    f1=a*(x+x0)/2+b*(1-(x+x0)/2);
    f2=c*(x+x0)/2+d*(1-(x+x0)/2);
    p0=6*x0*(1-x0)*exp(-2*t/N)+30*x0*(1-x0)*(1-2*x0)*(1-2*x)*exp(-6*t/N);
    p=1/C*exp(N*w/2*(x-x0)*(f1-f2))*p0;
    P0=[P0 p0];
    P=[P p];
    XX=[XX x];
end
subplot(3,3,4)
plot(XX,P0./P0)
hold on
plot(XX,P./P0)
hold on
Y=[X4 X04];
bins =100; 
bin_space=1/bins;
xtick=0:bin_space:1;
[counts,centers]=hist(Y,xtick);
Z=counts(:,1)./counts(:,2);
plot([0:0.01:1],Z,'*');
box off
xlabel('x','FontSize',9)
set(gca,'TickLength',[0.02,0.02])
title('(d)');

clear
tic
N=1000;
a=20;b=1;c=1;d=20;
w=0.01;
x0=0.5;t=3000;
load('N1000w0.01A2.mat');
X5=X(:,t);X05=X0(:,t);
ppp=(b-d)/(b-d+c-a);
P0=[];
P=[];
XX=[];
C=1;
for x=0:0.01:1
    f1=a*(x+x0)/2+b*(1-(x+x0)/2);
    f2=c*(x+x0)/2+d*(1-(x+x0)/2);
    p0=6*x0*(1-x0)*exp(-2*t/N)+30*x0*(1-x0)*(1-2*x0)*(1-2*x)*exp(-6*t/N);
    p=1/C*exp(N*w/2*(x-x0)*(f1-f2))*p0;
    P0=[P0 p0];
    P=[P p];
    XX=[XX x];
end
subplot(3,3,5)
plot(XX,P0./P0)
hold on
plot(XX,P./P0)
hold on
Y=[X5 X05];
bins =100; 
bin_space=1/bins; 
xtick=0:bin_space:1;
[counts,centers]=hist(Y,xtick);
Z=counts(:,1)./counts(:,2);
plot([0:0.01:1],Z,'*');
box off
xlabel('x','FontSize',9)
set(gca,'TickLength',[0.02,0.02])
title('(e)');

clear
tic
N=1000;
a=20;b=1;c=1;d=20;
w=0.01;
x0=0.5;t=6000;
load('N1000w0.01A2.mat');
X6=X(:,t);X06=X0(:,t);
ppp=(b-d)/(b-d+c-a);
P0=[];
P=[];
XX=[];
C=1;
for x=0:0.01:1
    f1=a*(x+x0)/2+b*(1-(x+x0)/2);
    f2=c*(x+x0)/2+d*(1-(x+x0)/2);
    p0=6*x0*(1-x0)*exp(-2*t/N)+30*x0*(1-x0)*(1-2*x0)*(1-2*x)*exp(-6*t/N);
    p=1/C*exp(N*w/2*(x-x0)*(f1-f2))*p0;
    P0=[P0 p0];
    P=[P p];
    XX=[XX x];
end
subplot(3,3,6)
plot(XX,P0./P0)
hold on
plot(XX,P./P0)
hold on
Y=[X6 X06];
bins =100; 
bin_space=1/bins; 
xtick=0:bin_space:1;
[counts,centers]=hist(Y,xtick);
Z=counts(:,1)./counts(:,2);
plot([0:0.01:1],Z,'*');
box off
xlabel('x','FontSize',9)
set(gca,'TickLength',[0.02,0.02])
title('(f)');

clear
tic
%parameter setting
N=1000;%population size
a=3;b=0;c=5;d=1;%payoff matrix A3
w=0.01;%Selection of intensity
x0=0.5;t=1000;%Initial frequency and time step
load('N1000w0.01A3.mat');
X(X<0)=0;X(X>1)=1;X0(X0<0)=0;X0(X0>1)=1;
X1=X(:,t);X01=X0(:,t);
ppp=(b-d)/(b-d+c-a);
P0=[];
P=[];
XX=[];
C=1;
for x=0:0.01:1
    f1=a*(x+x0)/2+b*(1-(x+x0)/2);
    f2=c*(x+x0)/2+d*(1-(x+x0)/2);
    p0=6*x0*(1-x0)*exp(-2*t/N)+30*x0*(1-x0)*(1-2*x0)*(1-2*x)*exp(-6*t/N);
    p=1/C*exp(N*w/2*(x-x0)*(f1-f2))*p0;
    P0=[P0 p0];
    P=[P p];
    XX=[XX x];
end
subplot(3,3,7)
plot(XX,P0./P0)
hold on
plot(XX,P./P0)
hold on
Y=[X1 X01];
bins =100;
bin_space=1/bins;
xtick=0:bin_space:1;
[counts,centers]=hist(Y,xtick);
Z=counts(:,1)./counts(:,2);
plot([0:0.01:1],Z,'*');
box off
xlabel('x','FontSize',9)
set(gca,'TickLength',[0.02,0.02])
title('(g)');


clear
tic
N=1000;
a=3;b=0;c=5;d=1;
w=0.01;
x0=0.5;t=3000;
load('N1000w0.01A3.mat');
X(X<0)=0;X(X>1)=1;X0(X0<0)=0;X0(X0>1)=1;
X1=X(:,t);X01=X0(:,t);
ppp=(b-d)/(b-d+c-a);
P0=[];
P=[];
XX=[];
C=1;
for x=0:0.01:1
    f1=a*(x+x0)/2+b*(1-(x+x0)/2);
    f2=c*(x+x0)/2+d*(1-(x+x0)/2);
    p0=6*x0*(1-x0)*exp(-2*t/N)+30*x0*(1-x0)*(1-2*x0)*(1-2*x)*exp(-6*t/N);
    p=1/C*exp(N*w/2*(x-x0)*(f1-f2))*p0;
    P0=[P0 p0];
    P=[P p];
    XX=[XX x];
end
subplot(3,3,8)
plot(XX,P0./P0)
hold on
plot(XX,P./P0)
hold on
Y=[X1 X01];
bins =100;
bin_space=1/bins; 
xtick=0:bin_space:1;
[counts,centers]=hist(Y,xtick);
Z=counts(:,1)./counts(:,2);
plot([0:0.01:1],Z,'*');
box off
xlabel('x','FontSize',9)
set(gca,'TickLength',[0.02,0.02])
title('(h)');

clear
tic
N=1000;
a=3;b=0;c=5;d=1;
w=0.01;
x0=0.5;t=6000;
load('N1000w0.01A3.mat');
X(X<0)=0;X(X>1)=1;X0(X0<0)=0;X0(X0>1)=1;
X1=X(:,t);X01=X0(:,t);
ppp=(b-d)/(b-d+c-a);
P0=[];
P=[];
XX=[];
C=1;
for x=0:0.01:1
    f1=a*(x+x0)/2+b*(1-(x+x0)/2);
    f2=c*(x+x0)/2+d*(1-(x+x0)/2);
    p0=6*x0*(1-x0)*exp(-2*t/N)+30*x0*(1-x0)*(1-2*x0)*(1-2*x)*exp(-6*t/N);
    p=1/C*exp(N*w/2*(x-x0)*(f1-f2))*p0;
    P0=[P0 p0];
    P=[P p];
    XX=[XX x];
end
subplot(3,3,9)
plot(XX,P0./P0)
hold on
plot(XX,P./P0)
hold on
Y=[X1 X01];
bins =100; 
bin_space=1/bins; 
xtick=0:bin_space:1;
[counts,centers]=hist(Y,xtick);
Z=counts(:,1)./counts(:,2);
plot([0:0.01:1],Z,'*');
box off
xlabel('x','FontSize',9)
set(gca,'TickLength',[0.02,0.02])
title('(i)');
