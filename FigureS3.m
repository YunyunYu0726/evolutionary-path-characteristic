clear
tic
%parameter setting
N=1000;%population size
a=9;b=18;c=27;d=9;%payoff matrix A1
w=0.3;%Selection of intensity
x0=0.5;t1=100;%Initial frequency and time step
load('N1000w0.3A1.mat');%Simulated data obtained through the supplementary file code (Load mat files), noting the consistency of the parameters (i.e., N;a,b,c,d;w);40,000 simulations
X1=X(:,t1);X01=X0(:,t1);
Y=[X1 X01];
bins =100; %Counting by intervals
bin_space=1/bins; %Width of each bin
xtick=0:bin_space:1;
[counts,centers]=hist(Y,xtick);
Z=counts(:,1)./counts(:,2);%Probability densities (simulations) when selection intensity is non-zero/Probability density of neutrality (simulation)
plot([0:0.01:1],Z,'*');
hold on
t2=300;%Initial frequency and time step
load('N1000w0.3A1.mat');%Simulated data obtained through the supplementary file code (Load mat files), noting the consistency of the parameters (i.e., N;a,b,c,d;w);40,000 simulations
X12=X(:,t2);X012=X0(:,t2);
Y2=[X12 X012];
bins =100; %Counting by intervals
bin_space=1/bins; %Width of each bin
xtick=0:bin_space:1;
[counts,centers]=hist(Y2,xtick);
Z2=counts(:,1)./counts(:,2);%Probability densities (simulations) when selection intensity is non-zero/Probability density of neutrality (simulation)
plot([0:0.01:1],Z2,'*');
hold on
t3=600;%Initial frequency and time step
load('N1000w0.3A1.mat');%Simulated data obtained through the supplementary file code (Load mat files), noting the consistency of the parameters (i.e., N;a,b,c,d;w);40,000 simulations
X13=X(:,t3);X013=X0(:,t3);
Y3=[X13 X013];
bins =100; %Counting by intervals
bin_space=1/bins; %Width of each bin
xtick=0:bin_space:1;
[counts,centers]=hist(Y3,xtick);
Z3=counts(:,1)./counts(:,2);%Probability densities (simulations) when selection intensity is non-zero/Probability density of neutrality (simulation)
plot([0:0.01:1],Z3,'*');
hold on
box off
set(gca,'TickLength',[0.02,0.02])
z=ylabel('$$ \bf\it\gamma (x,x_{0})=\frac{p(x,t;x_{0})}{\tilde{p}(x,t;x_{0})} $$');
set(z,'Interpreter','latex');