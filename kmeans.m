function [result, error] = kmeans(X, y, label_num, max_iter)
result = y;
m = size(X,1);
n = size(X,2);
error = zeros(max_iter,1);
for iter = 1:max_iter

  bin = zeros(label_num, m);
  for k = 1:label_num
    bin(k,:) = (y == k)';
  end
  means = bin * X / m;
  for i=1:m
    x = X(i,:);
    W = zeros(label_num, n);
    for k=1:label_num
      W(k,:) = x;
    end
    [distance ,cluster] = min(norms(W - means));
    error(iter) = error(iter) + distance;
    y(i) = cluster;
  end
end
result = y;
end
