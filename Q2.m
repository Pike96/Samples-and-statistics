n=100000;
X=rand(1,n);
Y=circshift(X,1,2);
Y(1)=0;
cov(X,Y)
