clear;
n=20;            % n is the number of the samples
X=[];               % X stores the sample outcomes
Sx2=0;              % Sx2 is the sum of sample variance

for i=1:n
    X=[X 5*rand()-3];
end

hist(X,100)
