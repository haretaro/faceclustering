function result = show(p,size)
image = uint8(reshape(p,size(1),size(2),3));
result = imshow(image);
end
