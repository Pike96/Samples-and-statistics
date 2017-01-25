n = 10000;                % n is experiment times
M = 10;
A = randi([0 M-1],1,n);

hist(A)

X = hist(A);
X_theo = repmat(n/M,1,M);
ChisquaredTest = sum((X-X_theo).^2./X_theo);
ChisquaredThreshold_95 = chi2inv(0.95,M);

disp(['ChisquaredTest = ',num2str(ChisquaredTest),',	ChisquaredTest = ',num2str(ChisquaredThreshold_95)]);

Y = [0 repmat(n/M,1,M-1)]
ChisquaredTest = (X-Y).^2./Y%sum((X-Y).^2./Y);
ChisquaredThreshold_95 = chi2inv(0.95,M);

disp(['ChisquaredTest = ',num2str(ChisquaredTest),',	ChisquaredTest = ',num2str(ChisquaredThreshold_95)]);

% use different n, infinite? 
