function result = kmeans(X, y, label_num, max_iterr)
result = y;
m = size(X,1);
n = size(X,2);

for itter = 1:max_iterr
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
    [a,cluster] = min(norms(W - means));
    result(i) = cluster;
  end
end
end
