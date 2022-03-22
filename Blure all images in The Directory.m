

Imagefiles = dir(‘Ghulam hyder.jpg’);
Nfiles = length(imagesfiles);
For ii =1:nfiles
Currentfilename=imagefiles(ii).name;
Current image=imred(current file name);
%images(ii)=currentimage;
FaceDetector=vision.cascade object detector;
b box=step(faceDetector, currentimage);
for j=1: size(bbox)
xbox=bbox(j,:);
Subimage = imcrop (currentimage,xbox);
H= fspecial (‘disk’,50);
Blurred = imfilter(subimage, H);
Currentimage (xbox(2): xbox(2), +xbox (4) ,
Xbox(1) : xbox(1) +xbox(3), 1: end)= blurred;
Imwrite (currentimage, stract (current file name,’ .BMP’));
End 
End
