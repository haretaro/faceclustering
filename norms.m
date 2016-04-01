function W = norms(X, l)
  m = size(X,1);
  W = zeros(m,1);
  for i = 1:m
    W(i) = norm(X(i,:),l);
  end
end
