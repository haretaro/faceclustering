cluster_num = 4;
iter_num = 10;
pictsize = [40,40];
X = readImages('40x40/data',300,pictsize);
m = size(X,1);
init_y = randi(cluster_num,m);
init_y = init_y(:,1);
[y,error] = kmeans(X,init_y, cluster_num, iter_num);
for k=1:cluster_num
  c = X(y==k,:);
  %fprintf("cluster %d\n",k);
  size(c)
  if (size(c,1) > 0)
    show(mean(c),pictsize);
    pause
  end
end
plot(error);
pause
