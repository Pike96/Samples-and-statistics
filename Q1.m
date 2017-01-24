clear;
n=20;            % n is the number of the samples
X=[];               % X stores the sample outcomes
Sx2=0;              % Sx2 is the sum of sample variance

for i=1:n
    X=[X 5*rand()-3];
end

hist(X,100)

disp(['The sample mean is: ',num2str(sum(X)/n)]);

for i=1:n
    Sx2=Sx2+(X(i)-sum(X)/n)^2;
end

disp(['The sample variance is: ',num2str(Sx2/(n-1))]);
