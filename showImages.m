function returnvalue = showImages(images, pictsize, n)
for i = 1:n
  for j = 1:n
    image = images((i-1)*n+j, :);
    image = uint8(reshape(image,pictsize(1),pictsize(2),3));
    if(j==1)
      row = image;
    else
      row = horzcat(row,image);
    end
  end
  if(i==1)
    result = row;
  else
    result = vertcat(result,row);
  end
end
size(result);
resultvalue = imshow(result);
end
