X1 = rand(10,2) * 2 - 1;
X2 = rand(10,2) * 2 + 1;
X = [X1; X2];
plot(X,'rx');
m = size(X,1);
y = (rand(m,1) > 0.5) + 1;
y = kmeans(X, y, 2, 10);
y

c1 = X(y == 1, :);
c2 = X(y == 2, :);
plot(c1(:,1),c1(:,2),'ro',c2(:,1),c2(:,2),'bo')