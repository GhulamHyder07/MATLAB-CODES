

img = imread('Ghulam hyder.jpg');
one3rd = round(size(rgb2gray(img),2)/3);
one2nd = one3rd * 2;
gray = rgb2gray(img);
bw = im2bw(img);
for i = 1 : 3
    img(:,one3rd+1:one2nd,i) = gray(:,one3rd+1:one2nd);
end
for i = 1 : size(gray,1)
    for j = one2nd+1 : size(gray,2)
        for p = 1 : 3
            if bw(i,j) == 0
                img(i,j,p) = 0;
            else
                img(i,j,p) = 255;
            end
        end
    end
end
