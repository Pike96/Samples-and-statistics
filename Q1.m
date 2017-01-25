clear;
n = input('Please enter the number of samples: ');
X = [];               % X stores the sample outcomes

for i = 1:n
    % Generate random number in [-3,2] and store in X
    X = [X 5*rand() - 3];   
end

hist(X,100);

disp(['The sample mean is: ',num2str(mean(X))]);
disp(['The sample variance is: ',num2str(var(X))]);

M = sort(bootstrp(n,@mean,X));
S = sort(bootstrp(n,@std,X));

% Get index of 2.5% point and 97.5% point
disp(['The bootstrap confidence interval for sample mean is: [',...
    num2str(M(round(n*0.025))),',',num2str(M(round(n*0.975))),']']);
disp(['The bootstrap confidence interval ',...
    'for sample standard deviation is: [',...
    num2str(S(round(n*0.025))),',',num2str(S(round(n*0.975))),']']);
