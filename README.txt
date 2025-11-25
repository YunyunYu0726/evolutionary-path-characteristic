README: Data and Code for "The time-invariance and non-decreasing expectation of an evolutionary path characteristic under weak selection" 

GENERAL INFORMATION

This README.txt file was updated on: November 28, 2025.

A. Paper associated with this archive
Citation:   Yu, Y.-Y., Hui, C., Feng, T.-J., Li, C., Wang, C., Tao, Y., & Wang, R.-W. (in press). The time-invariance and non-decreasing expectation of an evolutionary path characteristic under weak selection. The American Naturalist.
Brief abstract:   This study investigates evolutionary dynamics in finite populations combining frequency-dependent selection and genetic drift. We derive the Fokker-Planck equation describing the stochastic frequency dynamics of two phenotypes under weak selection and develop a path integral formulation characterizing the probability density of phenotypic frequency. The formulation identifies a time-invariant evolutionary path characteristic, whose expectation does not decline over time. This framework complements Fisher's theorem by providing a robust measure of accumulating adaptation in stochastic evolutionary dynamics. This repository contains all data, simulation code, and scripts necessary to reproduce the results and figures presented in the paper.

B. Originators
Yun-Yun Yu, School of Mathematics and Statistics, Northwestern Polytechnical University, Xi'an 710072, P.R. China
Cang Hui, Department of Mathematical Sciences, Stellenbosch University, Stellenbosch 7602, South Africa; National Institute for Theoretical and Computational Sciences, African Institute for Mathematical Sciences, Stellenbosch 7602, South Africa; International Initiative for Theoretical Ecology, London, N1 2EE, UK
Tian-Jiao Feng, Key Laboratory of Animal Ecology and Conservation Biology, Center for Computational and Evolutionary Biology, Institute of Zoology, Chinese Academy of Sciences, Beijing 100101, P.R. China
Cong Li, School of Ecology and Environment, Northwestern Polytechnical University, Xi'an 710072, P.R. China
Chao Wang, School of Ecology and Environment, Northwestern Polytechnical University, Xi'an 710072, P.R. China
Yi Tao, Key Laboratory of Animal Ecology and Conservation Biology, Center for Computational and Evolutionary Biology, Institute of Zoology, Chinese Academy of Sciences, Beijing 100101, P.R. China; School of Ecology and Environment, Northwestern Polytechnical University, Xi'an 710072, P.R. China
Rui-Wu Wang, College of Life Sciences, Zhejiang University, Hangzhou 310058, P.R. China

C. Contact information
Name: Rui-Wu Wang
Address: College of Life Sciences, Zhejiang University, Hangzhou 310058, P.R. China
email:  wangrw@zju.edu.cn

D. Dates of data collection
Final simulation data generation for this paper: October 2025

E. Geographic Location(s) of data collection
This is a theoretical study. All data were generated via computer simulations.

F. Funding Sources
NSFC-Yunnan United Fund (Grant No. U2102221)
National Natural Science Foundation of China (Grants No. 32071610 and No. 31971511)
National Research Foundation of South Africa (No. 89967)



ACCESS INFORMATION

1. Licenses/restrictions
    Code: MIT License  (See“LICENSE” file for details)

2. Data from Other Sources
    None

3. Recommended Citation (Blinded)
    To be cited as: The time-invariance and non-decreasing expectation of an evolutionary path characteristic under weak selection, currently under double-blind review at The American Naturalist.

DATA & CODE FILE OVERVIEW

This data repository consist of six code scripts, and this README document, which includes all the data and code required to reproduce the figures presented in the manuscript. Below are the filenames and variable descriptions for the data and code.

Data Files and Variables
    Figure1.m
       N: population size
       a=9;b=18;c=27;d=9: payoff matrix A1
       w=0.01: Selection of intensity
       x0=0.5;t=1000: Initial frequency and time step
       X1=X(:,t): Simulation results of the Moran Process with selection
       X01=X0(:,t): Simulation results of the Moran Process under neutrality
       P0=[]: Theoretical probability density under neutrality
       P=[]: Theoretical probability density under selection
       Z=counts(:,1)./counts(:,2): Probability densities (simulations) when selection intensity is non-zero/Probability density of neutrality (simulation)
    Figure2.m
       N: population size
       a=9;b=18;c=27;d=9: payoff matrix A1
       w=0.01: Selection of intensity
       X1: simulation with selection
       X01: simulation with neutrality  
       bins =1000: Counting by intervals
       bin_space=1/bins: Width of each bin
       Z=counts(:,1)./counts(:,2): Probability densities (simulations) when selection intensity is non-zero/Probability density of neutrality (simulation)
    FigureS1.m
       N: population size
       a=9;b=18;c=27;d=9: payoff matrix A1
       w=0: Selection of intensity
       E1=[E1 ee]: Average fitness
    FigureS2.m
       N: population size
       a=9;b=18;c=27;d=9: payoff matrix A1
       w=0: Selection of intensity
       X1=X(:,1:60001): simulation with selection
    FigureS3.m
       N=1000: population size
       a=9;b=18;c=27;d=9: payoff matrix A1
        w=0.3: Selection of intensity
       x0=0.5;t1=100: Initial frequency and time step
       P0=[]: Theoretical probability density under neutrality
       P=[]: Theoretical probability density under selection
    Lodematfiles.m
       N: population size
       a=9;b=18;c=27;d=9: payoff matrix A1
       w=0.01: Selection of intensity
       X=[]: simulation with selection
       X0=[]: simulation with neutrality  

Code Scripts and Workflow
The analysis should be run in the following order:

1.  Lodematfiles.m: This script exports the raw data used for the figures and saves it as ".mat" files (e.g., save('N1000w0.01A1.mat','X','X0')). By varying the payoff matrix and the selection intensity parameters, the corresponding data files can be generated.
2.  Figure1.m: This script is used to generate Figure 1 in the paper. It uses the data files "N1000w0.01A1.mat", "N1000w0.01A2.mat", and "N1000w0.01A3.mat", which can be generated by the "Lodematfiles.m" script (by changing the respective payoff matrix parameter).
3.  Figure2.m: This script is used to generate Figure 2 in the paper. It requires data files such as "N1000w0.01A1.mat", "N3000w0.01A1.mat", "N5000w0.01A1.mat" for payoff matrix A1, and similarly for matrices A2 and A3. These files can be generated by the "Lodematfiles.m" script (by varying the population size N and the payoff matrix parameter).
4.  FigureS1.m: This script is used to generate Figure S1 (Supplementary) in the paper. It uses the data files "N1000w0.01A1.mat" and "N1000w0.5A1.mat", which can be generated by the "Lodematfiles.m" script (by changing the selection intensity w parameter).
5.  FigureS2.m: This script is used to generate Figure S2 (Supplementary) in the paper. It uses the data files "N1000w0.01t=60NA1.mat", "N1000w0.01t=60NA2.mat", and "N1000w0.01t=60NA3.mat", which can be generated by the "Lodematfiles.m" script (by changing the corresponding parameters).
6.  FigureS3.m: This script is used to generate Figure S3 (Supplementary) in the paper. It uses the data file "N1000w0.3A1.mat", which can be generated by the "Lodematfiles.m" script (by changing the corresponding parameters).

SOFTWARE VERSIONS
The analyses were performed using:
   MATLAB: Version R2018b 
   Required Toolboxes: None

REFERENCES
   None
