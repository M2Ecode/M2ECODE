function [ac,F1_value,Precision,Recall,indic] = printResult(X, label, K, kmeansFlag)
% print the accuracy, F1_value, Precision and Recall result
for i = 1:20
    if kmeansFlag == 1
        indic = litekmeans(X, K, 'Replicates',100);
        indic = bestMap(label, indic);
        result(i,:) = ClusteringMeasure(label, indic);
        [result_F1(i),result_P(i),result_R(i)]=evaluate_F1_P_R(label, indic);
    else
        [~, indic] = max(X, [] ,2);
    end
end
        fprintf('Acc is %d (%d)\n', mean(result(:,1)), std(result(:,1)));
        fprintf('F1 is %d (%d)\n', mean(result_F1), std(result_F1));
        fprintf('Precision is %d (%d)\n', mean(result_P), std(result_P));
        fprintf('Recall is %d (%d)\n', mean(result_R), std(result_R));
        
        ac=mean(result(:,1));
        F1_value = mean(result_F1);
        Precision = mean(result_P);
        Recall = mean(result_R);

