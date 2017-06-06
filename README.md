*********************************************************************************************
Dataset:
HIV_Dataset.mat   
BP_Dataset.mat

Format:
data: third-dimensional tensor contain the fMRI and DTI
gnd: ground-truth label
K: clustering numer

*********************************************************************************************
Function:
M2E_demo: main function uses M2E method to calculate the HIV and BP dataset
1. M2E: update F*
2. M2E_initial: initialize the H and F
3. M2E_ADMM: use to update H, P, U and F
