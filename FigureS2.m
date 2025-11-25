clear
tic
% parameter setting
N=1000;%population size
a=9;b=18;c=27;d=9;%payoff matrix A1
w=0.01;%Selection of intensity

load('N1000w0.01t=60NA1.mat');%Simulated data obtained through the supplementary file code (Load mat files), noting the consistency of the parameters (i.e., N;a,b,c,d;w);40,000 simulations
X(X<0)=0;X(X>1)=1;X0(X0<0)=0;X0(X0>1)=1;
X1=X(:,1:60001);
H1=subplot(1,6,1);
xx=0:1:60000;
for i=1:30  %To ensure clarity, 30 paths are displayed here.
       plot(xx,X1(i,:),'Color',[0.24 0.35 0.67]);
       hold on;
end
axis([0,60000,0,1])  %Determine the size of the x-axis and y-axis block diagrams
set(gca,'XTick',[0:20000:60000]) %x-axis range 0-60,000 with 20,000 intervals
set(gca,'YTick',[0:0.2:1]) %y-axis range 0-1, interval 0.2
xlabel('Time step','FontSize',8)  %Description of x-axis coordinates
ylabel('Frequency of phenotype A','FontSize',8) %Description of y-axis coordinates
title('(a)','FontSize',8);
H2=subplot(1,6,2);
t1=12001;
AA=X1(:,t1);
t2=60001;
AA2=X1(:,t2);
set(0,'defaultfigurecolor','w')
h1=histogram(AA,0:0.04:1);
h1.Normalization = 'probability';
hold on
h2=histogram(AA2,0:0.04:1);
h2.Normalization = 'probability';
axis([0,1,0,1]);
axis([0,1,0,1]);
ylabel('Probability density distribution','FontSize',8);
box off

clear
tic
N=1000;
a=20;b=1;c=1;d=20;
w=0.01;
load('N1000w0.01t=60NA2.mat');%Simulated data obtained through the supplementary file code (Load mat files), noting the consistency of the parameters (i.e., N;a,b,c,d;w);40,000 simulations
X(X<0)=0;X(X>1)=1;X0(X0<0)=0;X0(X0>1)=1;
X1=X(:,1:60001);
H1=subplot(1,6,3);
xx=0:1:60000;
for i=1:30
       plot(xx,X1(i,:),'Color',[0.24 0.35 0.67]);
       hold on;
end
axis([0,60000,0,1])
set(gca,'XTick',[0:20000:60000])
set(gca,'YTick',[0:0.2:1])
xlabel('Time step','FontSize',8)
title('(b)','FontSize',8);
H2=subplot(1,6,4);
t1=12001;
AA=X1(:,t1);
t2=60001;
AA2=X1(:,t2);
set(0,'defaultfigurecolor','w')
h1=histogram(AA,0:0.04:1);
h1.Normalization = 'probability';
hold on
h2=histogram(AA2,0:0.04:1);
h2.Normalization = 'probability';
axis([0,1,0,1]);
axis([0,1,0,1]);
ylabel('Probability density distribution','FontSize',8) 
box off

clear
tic
N=1000;
a=3;b=0;c=5;d=1;
w=0.01;
load('N1000w0.01t=60NA3.mat');%Simulated data obtained through the supplementary file code (Load mat files), noting the consistency of the parameters (i.e., N;a,b,c,d;w);40,000 simulations
X(X<0)=0;X(X>1)=1;X0(X0<0)=0;X0(X0>1)=1;
X1=X(:,1:60001);
H1=subplot(1,6,5);
xx=0:1:60000;
for i=1:30
       plot(xx,X1(i,:),'Color',[0.24 0.35 0.67]);
       hold on;
end
axis([0,60000,0,1]) 
set(gca,'XTick',[0:20000:60000])
set(gca,'YTick',[0:0.2:1]) 
xlabel('Time step','FontSize',8) 
title('(c)','FontSize',8);
H2=subplot(1,6,6);
t1=12001;
AA=X1(:,t1);
t2=60001;
AA2=X1(:,t2);
set(0,'defaultfigurecolor','w')
h1=histogram(AA,0:0.04:1);
h1.Normalization = 'probability';
hold on
h2=histogram(AA2,0:0.04:1);
h2.Normalization = 'probability';
axis([0,1,0,1]);
ylabel('Probability density distribution','FontSize',8) 
leg=legend({'t=12N','t=60N'},'FontSize',7);
leg.ItemTokenSize = [5,5];
box off

