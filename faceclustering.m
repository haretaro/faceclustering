cluster_num = 6;
iter_num = 8;
%pictsize = [40,40];
%X = readImages('40x40/data',300,pictsize);
pictsize = [240,320];
X = readImages('320x240/data',300,pictsize);
m = size(X,1);
init_y = randi(cluster_num,m);
init_y = init_y(:,1);
[y,error] = kmeans(X,init_y, cluster_num, iter_num, 2);
for k=1:cluster_num
  c = X(y==k,:);
  size(c)
  if (size(c,1) > 0)
    show(mean(c),pictsize);
    pause
  end
  if (size(c,1) > 48)
    showImages(c(1:49,:),pictsize,7);
    pause
  end
end
plot(error);
pause
