clear
tic
%parameter setting
N=1000;%population size
a=9;b=18;c=27;d=9;%payoff matrix A1
w=0.01;%Selection of intensity
X=[];X0=[];
for n=1:40000 %Number of simulations
    x=0;xx=0;
    x(1)=0.5;xx(1)=0.5;%Given the initial values,x denotes selective evolution, xx denotes neutral evolution
    for t=1:12000 %Time step of the simulation
        %natural selection
        f1=1-w+w*(a*x(t)+b*(1-x(t)));
        f2=1-w+w*(c*x(t)+d*(1-x(t)));
        test1=rand(1);test2=rand(1);
        if test1<f1*x(t)/(f1*x(t)+f2*(1-x(t))) && test2>x(t) 
            x(t+1)=x(t)+1/N;
        elseif test1>f1*x(t)/(f1*x(t)+f2*(1-x(t))) && test2<x(t)
            x(t+1)=x(t)-1/N;
        else
            x(t+1)=x(t);
        end
        %Neutral Selection
        test3=rand(1);test4=rand(1);
        if test3<xx(t) && test4>xx(t) 
            xx(t+1)=xx(t)+1/N;
        elseif test3>xx(t) && test4<xx(t)
            xx(t+1)=xx(t)-1/N;
        else
            xx(t+1)=xx(t);
        end
    end
    X=[X;x];X0=[X0;xx];
end
X(X<0)=0;X(X>1)=1;X0(X0<0)=0;X0(X0>1)=1;
save('N1000w0.01A1.mat','X','X0');%Change the game matrices a, b,c,d, the number of populations N, the selection intensity w and the number of steps t to store the corresponding data for Figure1, 2 and S1£¬S2 simulations.