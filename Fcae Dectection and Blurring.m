

img = imread('face1.jpg');
faceD = vision.CascadeObjectDetector();
faceD.MergeThreshold = 10;
bbox = step(faceD, img);
blur = fspecial('disk',10);
for i = 1 : size(bbox,1)
    crop = imcrop(img,bbox(i,:));
    crop = imfilter(crop,blur);
    img(bbox(i,2):bbox(i,2)+bbox(i,4),bbox(i,1):bbox(i,1)+bbox(i,3),:) = crop;
end

