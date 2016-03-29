function X = readImages(prefix,m,size)
n = size(1) * size(2) * 3;
X = zeros(m,n);
for i = 1:m
  filename = sprintf('%s%05d.jpg',prefix,i);
  p = imread(filename);
  X(i,:) = double(p(:)');
end
end
