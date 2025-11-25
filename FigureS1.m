clear
tic
%Parameter settings
N=1000;%Population size
a=9;b=18;c=27;d=9;%payoff matrix A1
w=0;%Selection of intensity
load('N1000w0.01A1.mat');%Simulated data obtained through the supplementary file code(Load mat files), noting the consistency of the parameters (i.e., N;a,b,c,d;w)
X(X<0)=0;X(X>1)=1;
X0(X0<0)=0;X0(X0>1)=1;
X1=X;
X01=X0;%40,000 simulations
T=[1000,1500,2000,2500,3000,3500,4000,4500,5000,5500,6000,6500,7000,7500,8000,8500,9000,9500,10000,10500,11000,11500,12000];%Time step of the simulation
E1=[];III=[];x0=0.5;%initial frequency
for i=1:23
    t=T(i);
    Y=[X01(:,t)];
    e=mean(Y);
    f1=1-w+w*(a*e+b*(1-e));
    f2=1-w+w*(c*e+d*(1-e));
    ee=e*f1+(1-e)*f2;
    E1=[E1 ee];%Average fitness
    III=[III i];
end
subplot(3,1,3);
plot(III,E1,'-*');
leg=legend({'w=0'},'FontSize',8);
leg.ItemTokenSize = [5,5];
xlabel('Time steps/N','FontSize',10) 

clear
tic
%Parameter settings
N=1000;%Population size
a=9;b=18;c=27;d=9;%payoff matrix A1
w=0.01;%Selection of intensity
load('N1000w0.01A1.mat');
X(X<0)=0;X(X>1)=1;
X0(X0<0)=0;X0(X0>1)=1;
X1=X;
X01=X0;
T=[1000,1500,2000,2500,3000,3500,4000,4500,5000,5500,6000,6500,7000,7500,8000,8500,9000,9500,10000,10500,11000,11500,12000];
E2=[];III=[];x0=0.5;
for i=1:23
    t=T(i);
    Y=[X1(:,t)];
    e=mean(Y);
    f1=1-w+w*(a*e+b*(1-e));
    f2=1-w+w*(c*e+d*(1-e));
    ee=e*f1+(1-e)*f2;
    E2=[E2 ee];
    III=[III i];
end
subplot(3,1,2)
plot(III,E2,'-d');
leg=legend({'w=0.01'},'FontSize',8);
leg.ItemTokenSize = [5,5];
ylabel('Average of fitness','FontSize',10) 

clear
tic
N=1000;%Population size
a=9;b=18;c=27;d=9;%payoff matrix A1
w=0.5;%Selection of intensity
T=[1000,1500,2000,2500,3000,3500,4000,4500,5000,5500,6000,6500,7000,7500,8000,8500,9000,9500,10000,10500,11000,11500,12000];
E3=[];III=[];x0=0.5;
for i=1:23
    t=T(i);
    load('N1000w0.5A1.mat');
    X1=X(:,t);
    Y=[X1];
    e=mean(Y);
    f1=1-w+w*(a*e+b*(1-e));
    f2=1-w+w*(c*e+d*(1-e));
    ee=e*f1+(1-e)*f2;
    E3=[E3 ee];
    III=[III i];
end
subplot(3,1,1)
plot(III,E3,'-o');
set(0,'defaultfigurecolor','w');
leg=legend({'w=0.5'},'FontSize',8);
leg.ItemTokenSize = [5,5];

