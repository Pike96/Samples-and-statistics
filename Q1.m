clear;
n=10000;            % n is the number of the samples
X=[];               % X stores the sample outcomes
Sx2=0;              % Sx2 is the sum of sample variance

for i=1:n
    X=[X 5*rand()-3];   % Generate random number in [-3,2] and store in X
end

hist(X,100);

disp(['The sample mean is: ',num2str(sum(X)/n)]);

for i=1:n
    Sx2=Sx2+(X(i)-sum(X)/n)^2;
end

disp(['The sample variance is: ',num2str(Sx2/(n-1))]);

M=sort(bootstrp(n,@mean,X));
S=sort(bootstrp(n,@std,X));

% Get index of 2.5% point and 97.5% point
disp(['The bootstrap confidence interval for the sample mean is: [',num2str(M(round(n*0.025))),',',num2str(M(round(n*0.975))),']']);
disp(['The bootstrap confidence interval for the sample variance is: [',num2str(S(round(n*0.025))),',',num2str(S(round(n*0.975))),']']);
