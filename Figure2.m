clear
tic
%parameter setting
N=1000;%population size N
a=9;b=18;c=27;d=9;%payoff matrix A1
w=0.01;%Selection of intensity
load('N1000w0.01A1.mat');%Simulated data obtained through the supplementary file code (Load mat files), noting the consistency of the parameters (i.e., N;a,b,c,d;w);20,000 simulations
X(X<0)=0;X(X>1)=1;X0(X0<0)=0;X0(X0>1)=1;
X1=X;X01=X0;%X1: simulation with selection; X01: simulation with neutrality
T=[1000,1500,2000,2500,3000,3500,4000,4500,5000,5500,6000,6500,7000,7500,8000,8500,9000,9500,10000,10500,11000,11500,12000];%Time step of the simulation
E1=[];III=[];x0=0.5;
for i=1:23
    t=T(i);
    Y=[X1(:,t) X01(:,t)];
    bins =1000; %Counting by intervals
    bin_space=1/bins; %Width of each bin
    xtick=0:bin_space:1;
    [counts,centers]=hist(Y,xtick);
    Z=counts(:,1)./counts(:,2);%Probability densities (simulations) when selection intensity is non-zero/Probability density of neutrality (simulation)
    Z(isnan(Z))=0;Z(isinf(Z))=0;
    e=sum(Z)./999;
    E1=[E1 e];
    III=[III i];
end
H1=subplot(2,3,1);
plot(III,E1,'-*');
hold on

%Similar simulation with modified parameters. Population size N=3000
clear
tic
N=3000;
a=9;b=18;c=27;d=9;
w=0.01;
T=[3000,4500,6000,7500,9000,10500,12000,13500,15000,16500,18000,19500,21000,22500,24000,25500,27000,28500,30000,31500,33000,34500,36000];
E2=[];III=[];x0=0.5;
for i=1:23
    t=T(i);
    load('N3000w0.01A1.mat');
    X(X<0)=0;X(X>1)=1;X0(X0<0)=0;X0(X0>1)=1;
    X1=X(:,t);X01=X0(:,t);
    Y=[X1 X01];
    bins =3000;
    bin_space=1/bins; 
    xtick=0:bin_space:1;
    [counts,centers]=hist(Y,xtick);
    Z=counts(:,1)./counts(:,2);
    Z(isnan(Z))=0;Z(isinf(Z))=0;
    e=sum(Z)./2999;
    Z(isnan(Z))=0;Z(isinf(Z))=0;
    e=msum(Z)./2999;
    E2=[E2 e];
    III=[III i];
end
plot(III,E2,'-d');
hold on
%Similar simulation with modified parameters. Population size N=5000
clear
tic
N=5000;
a=9;b=18;c=27;d=9;
w=0.01;
T=[5000,7500,10000,12500,15000,17500,20000,22500,25000,27500,30000,32500,35000,37500,40000,42500,45000,47500,50000,52500,55000,57500,60000];
E3=[];III=[];x0=0.5;
for i=1:23
    t=T(i);
    load('N5000w0.01A1.mat');
    X(X<0)=0;X(X>1)=1;X0(X0<0)=0;X0(X0>1)=1;
    X1=X(:,t);X01=X0(:,t);
    Y=[X1 X01];
    bins =5000; 
    bin_space=1/bins; 
    xtick=0:bin_space:1;
    [counts,centers]=hist(Y,xtick);
    Z=counts(:,1)./counts(:,2);
    Z(isnan(Z))=0;Z(isinf(Z))=0;
    e=sum(Z)./4999;
    E3=[E3 e];
    III=[III i];
end
plot(III,E3,'-o');
hold on
xlabel('Time steps/N','FontSize',10)  
ylabel('Average of \gamma (x,x_0)','FontSize',10) 
title('(a)');
%Similar simulation with modified parameters. Payoff matrix A2; N=1000
clear
tic
N=1000;
a=20;b=1;c=1;d=20;
w=0.01;
load('N1000w0.01A2.mat');
X(X<0)=0;X(X>1)=1;X0(X0<0)=0;X0(X0>1)=1;
X1=X(1:10000,:);X01=X0(1:10000,:);
T=[1000,1500,2000,2500,3000,3500,4000,4500,5000,5500,6000,6500,7000,7500,8000,8500,9000,9500,10000,10500,11000,11500,12000];
E1=[];III=[];x0=0.5;
for i=1:23
    t=T(i);
    Y=[X1(:,t) X01(:,t)];
    bins =1000; 
    bin_space=1/bins; 
    xtick=0:bin_space:1;
    [counts,centers]=hist(Y,xtick);
    Z=counts(:,1)./counts(:,2);
    Z(isnan(Z))=0;Z(isinf(Z))=0;
    e=sum(Z)./999;
    E1=[E1 e];
    III=[III i];
end
H2=subplot(2,3,2);
plot(III,E1,'-*');
hold on

%Similar simulation with modified parameters. Payoff matrix A2; N=3000
clear
tic
N=3000;
a=20;b=1;c=1;d=20;
w=0.01;
load('N3000w0.01A2.mat');
X(X<0)=0;X(X>1)=1;X0(X0<0)=0;X0(X0>1)=1;
X1=X;X01=X0;
T=[3000,4500,6000,7500,9000,10500,12000,13500,15000,16500,18000,19500,21000,22500,24000,25500,27000,28500,30000,31500,33000,34500,36000];
E2=[];III=[];x0=0.5;
for i=1:23
    t=T(i);
    Y=[X1(:,t) X01(:,t)];
    bins =3000; 
    bin_space=1/bins; 
    xtick=0:bin_space:1;
    [counts,centers]=hist(Y,xtick);
    Z=counts(:,1)./counts(:,2);
    Z(isnan(Z))=0;Z(isinf(Z))=0;
    e=sum(Z)./2999;
    E2=[E2 e];
    III=[III i];
end
plot(III,E2,'-d');
hold on
%Similar simulation with modified parameters. Payoff matrix A2; N=5000
clear
tic
N=5000;
a=20;b=1;c=1;d=20;
w=0.01;
T=[5000,7500,10000,12500,15000,17500,20000,22500,25000,27500,30000,32500,35000,37500,40000,42500,45000,47500,50000,52500,55000,57500,60000];
E3=[];III=[];x0=0.5;
for i=1:23
    t=T(i);
    load('N5000w0.01A2.mat');
    X(X<0)=0;X(X>1)=1;X0(X0<0)=0;X0(X0>1)=1;
    X1=X(:,t);X01=X0(:,t);
    Y=[X1 X01];
    bins =5000; 
    bin_space=1/bins; 
    xtick=0:bin_space:1;
    [counts,centers]=hist(Y,xtick);
    Z=counts(:,1)./counts(:,2);
    Z(isnan(Z))=0;Z(isinf(Z))=0;
    e=sum(Z)./4999;
    E3=[E3 e];
    III=[III i];
end
plot(III,E3,'-o');
hold on
xlabel('Time steps/N','FontSize',10)  
title('(b)');
%Similar simulation with modified parameters. Payoff matrix A3; N=1000
clear
tic
N=1000;
a=3;b=0;c=5;d=1;
w=0.01;
T=[1000,1500,2000,2500,3000,3500,4000,4500,5000,5500,6000,6500,7000,7500,8000,8500,9000,9500,10000,10500,11000,11500,12000];
E1=[];III=[];x0=0.5;
for i=1:23
    t=T(i);
    load('N1000w0.01A3.mat');
    X(X<0)=0;X(X>1)=1;X0(X0<0)=0;X0(X0>1)=1;
    X1=X(:,t);X01=X0(:,t);
    Y=[X1 X01];
    bins =1000; 
    bin_space=1/bins; 
    xtick=0:bin_space:1;
    [counts,centers]=hist(Y,xtick);
    Z=counts(:,1)./counts(:,2);
    Z(isnan(Z))=0;Z(isinf(Z))=0;
    e=sum(Z)./999;
    E1=[E1 e];
    III=[III i];
end
H2=subplot(2,3,3);
plot(III,E1,'-*');
hold on
%Similar simulation with modified parameters. Payoff matrix A3; N=3000
clear
tic
N=3000;
a=3;b=0;c=5;d=1;
w=0.01;
T=[3000,4500,6000,7500,9000,10500,12000,13500,15000,16500,18000,19500,21000,22500,24000,25500,27000,28500,30000,31500,33000,34500,36000];
E2=[];III=[];x0=0.5;
for i=1:23
    t=T(i);
    load('N3000w0.01A3.mat');
    X(X<0)=0;X(X>1)=1;X0(X0<0)=0;X0(X0>1)=1;
    X1=X(:,t);X01=X0(:,t);
    Y=[X1 X01];
    bins =3000; 
    bin_space=1/bins; 
    xtick=0:bin_space:1;
    [counts,centers]=hist(Y,xtick);
    Z=counts(:,1)./counts(:,2);
    Z(isnan(Z))=0;Z(isinf(Z))=0;
    e=sum(Z)./2999;
    E2=[E2 e];
    III=[III i];
end
plot(III,E2,'-d');
hold on
%Similar simulation with modified parameters. Payoff matrix A3; N=5000
clear
tic
N=5000;
a=3;b=0;c=5;d=1;
w=0.01;
T=[5000,7500,10000,12500,15000,17500,20000,22500,25000,27500,30000,32500,35000,37500,40000,42500,45000,47500,50000,52500,55000,57500,60000];
E3=[];III=[];x0=0.5;
for i=1:23
    t=T(i);
    load('N5000w0.01A3.mat');
    X(X<0)=0;X(X>1)=1;X0(X0<0)=0;X0(X0>1)=1;
    X1=X(:,t);X01=X0(:,t);
    Y=[X1 X01];
    bins =5000; 
    bin_space=1/bins; 
    xtick=0:bin_space:1;
    [counts,centers]=hist(Y,xtick);
    Z=counts(:,1)./counts(:,2);
    Z(isnan(Z))=0;Z(isinf(Z))=0;
    e=sum(Z)./4999;
    E3=[E3 e];
    III=[III i];
end
plot(III,E3,'-o');
hold on
xlabel('Time steps/N','FontSize',10)
title('(c)');
leg=legend({'N=1000','N=3000','N=5000'},'FontSize',8);
leg.ItemTokenSize = [5,5];
%Similar simulation. Payoff matrix A1. N=1000.Calculation of average fitness.
clear
tic
N=1000;
a=9;b=18;c=27;d=9;
w=0.01;
load('N1000w0.01A1.mat');
X(X<0)=0;X(X>1)=1;
X1=X;
T=[1000,1500,2000,2500,3000,3500,4000,4500,5000,5500,6000,6500,7000,7500,8000,8500,9000,9500,10000,10500,11000,11500,12000];
E1=[];III=[];x0=0.5;
for i=1:23
    t=T(i);
    Y=[X1(:,t)];
    e=mean(Y);
    f1=1-w+w*(a*e+b*(1-e));
    f2=1-w+w*(c*e+d*(1-e));
    ee=e*f1+(1-e)*f2;
    E1=[E1 ee];
    III=[III i];
end
H1=subplot(2,3,4);
plot(III,E1,'-*');
hold on

%Similar simulation. Payoff matrix A1. N=3000.Calculation of average fitness.
clear
tic
N=3000;
a=9;b=18;c=27;d=9;
w=0.01;
T=[3000,4500,6000,7500,9000,10500,12000,13500,15000,16500,18000,19500,21000,22500,24000,25500,27000,28500,30000,31500,33000,34500,36000];
E2=[];III=[];x0=0.5;
for i=1:23
    t=T(i);
    load('N3000w0.01A1.mat');
    X(X<0)=0;X(X>1)=1;X0(X0<0)=0;X0(X0>1)=1;
    X1=X(:,t);
    Y=[X1];
    e=mean(Y);
    f1=1-w+w*(a*e+b*(1-e));
    f2=1-w+w*(c*e+d*(1-e));
    ee=e*f1+(1-e)*f2;
    E2=[E2 ee];
    III=[III i];
end
plot(III,E2,'-d');
hold on
%Similar simulation. Payoff matrix A1. N=5000.Calculation of average fitness.
clear
tic
N=5000;
a=9;b=18;c=27;d=9;
w=0.01;
T=[5000,7500,10000,12500,15000,17500,20000,22500,25000,27500,30000,32500,35000,37500,40000,42500,45000,47500,50000,52500,55000,57500,60000];
E3=[];III=[];x0=0.5;
for i=1:23
    t=T(i);
    load('N5000w0.01A1.mat');
    X(X<0)=0;X(X>1)=1;X0(X0<0)=0;X0(X0>1)=1;
    X1=X(:,t);
    Y=[X1];
    e=mean(Y);
    f1=1-w+w*(a*e+b*(1-e));
    f2=1-w+w*(c*e+d*(1-e));
    ee=e*f1+(1-e)*f2;
    E3=[E3 ee];
    III=[III i];
end
plot(III,E3,'-o');
hold on
xlabel('Time steps/N','FontSize',10)  
ylabel('Average of fitness','FontSize',10) 
title('(d)');
%Similar simulation. Payoff matrix A2. N=1000.Calculation of average fitness.
clear
tic
N=1000;
a=20;b=1;c=1;d=20;
w=0.01;
load('N1000w0.01A2.mat');
X(X<0)=0;X(X>1)=1;
X1=X;
T=[1000,1500,2000,2500,3000,3500,4000,4500,5000,5500,6000,6500,7000,7500,8000,8500,9000,9500,10000,10500,11000,11500,12000];
E1=[];III=[];x0=0.5;
for i=1:23
    t=T(i);
    Y=[X1(:,t)];
    e=mean(Y);
    f1=1-w+w*(a*e+b*(1-e));
    f2=1-w+w*(c*e+d*(1-e));
    ee=e*f1+(1-e)*f2;
    E1=[E1 ee];
    III=[III i];
end
H2=subplot(2,3,5);
plot(III,E1,'-*');
hold on

%Similar simulation. Payoff matrix A2. N=3000.Calculation of average fitness.
clear
tic
N=3000;
a=20;b=1;c=1;d=20;
w=0.01;
load('N3000w0.01A2.mat');
X(X<0)=0;X(X>1)=1;X0(X0<0)=0;X0(X0>1)=1;
X1=X;
T=[3000,4500,6000,7500,9000,10500,12000,13500,15000,16500,18000,19500,21000,22500,24000,25500,27000,28500,30000,31500,33000,34500,36000];
% T=[3000,3750,4500,5250,6000,6750,7500,8250,9000,9750,10500,11250,12000,12750,13500,14250,15000,15750,16500,17250,18000];
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
plot(III,E2,'-d');
hold on
%Similar simulation. Payoff matrix A2. N=5000.Calculation of average fitness.
clear
tic
N=5000;
a=20;b=1;c=1;d=20;
w=0.01;
T=[5000,7500,10000,12500,15000,17500,20000,22500,25000,27500,30000,32500,35000,37500,40000,42500,45000,47500,50000,52500,55000,57500,60000];
E3=[];III=[];x0=0.5;
for i=1:23
    t=T(i);
    load('N5000w0.01A2.mat');
    X(X<0)=0;X(X>1)=1;
    X1=X(:,t);
    Y=[X1];
    e=mean(Y);
    f1=1-w+w*(a*e+b*(1-e));
    f2=1-w+w*(c*e+d*(1-e));
    ee=e*f1+(1-e)*f2;
    E3=[E3 ee];
    III=[III i];
end
plot(III,E3,'-o');
hold on
xlabel('Time steps/N','FontSize',10)  
title('(e)');
%Similar simulation. Payoff matrix A3. N=1000.Calculation of average fitness.
clear
tic
N=1000;
a=3;b=0;c=5;d=1;
w=0.01;
T=[1000,1500,2000,2500,3000,3500,4000,4500,5000,5500,6000,6500,7000,7500,8000,8500,9000,9500,10000,10500,11000,11500,12000];
E1=[];III=[];x0=0.5;
for i=1:23
    t=T(i);
    load('N1000w0.01A3.mat');
    X(X<0)=0;X(X>1)=1;
    X1=X(:,t);
    Y=[X1];
    e=mean(Y);
    f1=1-w+w*(a*e+b*(1-e));
    f2=1-w+w*(c*e+d*(1-e));
    ee=e*f1+(1-e)*f2;
    E1=[E1 ee];
    III=[III i];
end
H2=subplot(2,3,6);
plot(III,E1,'-*');
hold on
%Similar simulation. Payoff matrix A3. N=3000.Calculation of average fitness.
clear
tic
N=3000;
a=3;b=0;c=5;d=1;
w=0.01;
T=[3000,4500,6000,7500,9000,10500,12000,13500,15000,16500,18000,19500,21000,22500,24000,25500,27000,28500,30000,31500,33000,34500,36000];
E2=[];III=[];x0=0.5;
for i=1:23
    t=T(i);
    load('N3000w0.01A3.mat');
    X(X<0)=0;X(X>1)=1;
    X1=X(:,t);
    Y=[X1];
    e=mean(Y);
    f1=1-w+w*(a*e+b*(1-e));
    f2=1-w+w*(c*e+d*(1-e));
    ee=e*f1+(1-e)*f2;
    E2=[E2 ee];
    III=[III i];
end
plot(III,E2,'-d');
hold on
%Similar simulation. Payoff matrix A3. N=5000.Calculation of average fitness.
clear
tic
N=5000;
a=3;b=0;c=5;d=1;
w=0.01;
T=[5000,7500,10000,12500,15000,17500,20000,22500,25000,27500,30000,32500,35000,37500,40000,42500,45000,47500,50000,52500,55000,57500,60000];
E3=[];III=[];x0=0.5;
for i=1:23
    t=T(i);
   load('N5000w0.01A3.mat');
    X(X<0)=0;X(X>1)=1;
    X1=X(:,t);
    Y=[X1];
    e=mean(Y);
    f1=1-w+w*(a*e+b*(1-e));
    f2=1-w+w*(c*e+d*(1-e));
    ee=e*f1+(1-e)*f2;
    E3=[E3 ee];
    III=[III i];
end
plot(III,E3,'-o');
hold on
set(0,'defaultfigurecolor','w');
xlabel('Time steps/N','FontSize',10) 
title('(f)');
leg=legend({'N=1000','N=3000','N=5000'},'FontSize',8);
leg.ItemTokenSize = [5,5];