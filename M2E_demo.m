%% parameter setting
options = [];
options.error = 1e-6;
options.converg =0.0001;
options.method =2;
options.rho=5;
options.mu=10^6;
options.mu_max=10^6;
options.kmeans = 1;
options.alpha = [0.1 0.1];
options.kmeans = 1;
options.rank=10;

%% HIV
load HIV_Dataset.mat
options.rank=15;
index_1=0.1;
index_2=0.1;
options.alpha=[index_1,index_2];
seed = 9;
Iter=8;
for trial_num=5
    [H_final, F_final, F_centroid, log, ac,F1_value,Precision,Recall,indic] = M2E(data, K, gnd, options, Iter, seed); 
    pos=size(find(indic==1),1);
    fprintf('Pos vs. Neg is %d vs. %d\n', mean(pos), 70-mean(pos));
end

%% BP
clear data gnd
load BP_Dataset.mat
options.rank=8;
index_1=0.5;
index_2=0.1;
options.alpha=[index_1,index_2];
seed = 10;
Iter = 20;
for trial_num=5
    [H_final, F_final, F_centroid, log, ac,F1_value,Precision,Recall,indic] = M2E(data, K, gnd, options, Iter, seed); 
    pos=size(find(indic==1),1);
    fprintf('Pos vs. Neg is %d vs. %d\n', mean(pos), 97-mean(pos));
end

