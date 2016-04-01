X1 = rand(150,2);
X1(:,1) = X1(:,1) * 2 * pi;
X1 = [cos(X1(:,1)), sin(X1(:,1))] .* X1(:,2);
X1 = X1 * 0.1;
X2 = X1 + 10;
X = [X1; X2];
plot(X,'rx');
m = size(X,1);
init_y = (rand(m,1) > 0.5) + 1;
[y,error,means] = kmeans(X, init_y, 2, 10, 2);

c1 = X(y == 1, :);
c2 = X(y == 2, :);
plot(c1(:,1),c1(:,2),'ro',c2(:,1),c2(:,2),'bo')
hold on
plot(means(:,1),means(:,2),'gh','MarkerSize',10);
pause
hold off
plot(error)
pause
