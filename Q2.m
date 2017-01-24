n=100000;               % n is the sequence length
X=rand(1,n);            % X is X_k
Y=circshift(X,1,2);     % Y is X_k+1 by shift array circularly first
Y(1)=0;                 % Set the first element to 0 to get X_k+1
C=cov(X,Y);             % Get covariance matrix

disp(['The sample mean is: ',num2str(C(2,1))]); % Display Cov(X_k,X_k+1)

% Xk and Xk+1 are correlated because cov... is never to be 0.
% They are not independent but tends to independent when n is big.
