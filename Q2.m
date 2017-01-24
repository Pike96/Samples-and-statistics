n=100000;                   % n is the sequence length
Xk=rand(1,n);               % Xk is X_k
Xk1=circshift(Xk,1,2);      % Xk1 is X_k+1 by shift array circularly first
Xk1(1)=0;                   % Set the first element to 0 to get X_k+1
C=cov(Xk,Xk1);              % Get covariance matrix

disp(['The sample mean is: ',num2str(C(2,1))]); % Display Cov(X_k,X_k+1)

% Xk and Xk+1 are correlated because cov... is never to be 0.
% They are not independent but tends to be independent when n is big.

m=10;
X=rand(1,m)
Y=[];
Y(1)=X(1);
Y(2)=X(2)-2*X(1);
Y(3)=X(3)-2*X(2)+0.5*X(1);
for k=4:m
    Y(k)=X(k)-2*X(k-1)+0.5*X(k-2)-X(k-3);
end
