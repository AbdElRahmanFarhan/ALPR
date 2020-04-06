% clear
% clc
% %read the image
% img= imread('image02.jpg');
% 
% 
% img= rgb2gray(img);
% img = imbinarize(img);
% img =imcomplement(img);
% 
% %apply median filter 
% img = medfilt2(img,[15 15]);
% 
% a
% %applying connected component analysis
% %cc = bwconncomp(img);
%  %st = regionprops(img, 'Image' );
%  %B = imresize(st(3).Image,2);
%  %B = medfilt2(B,[13 13]);
%  blobAnalyzer = vision.BlobAnalysis('MaximumCount', 500);
%  [area, centroids, roi] = step(blobAnalyzer, img);
%  areaConstraint = area > 300;
%  roi = double(roi(areaConstraint, :));
%  
%  img = insertShape(im2uint8(img), 'rectangle',roi);
% 
%  txt=ocr(img,roi,'TextLayout', 'Block');
%  %boundry1=st(1).BoundingBox;
%  %bw = bwselect(img,[boundary(1) boundary(2)],[boundary(3) boundary(4)],8);
% %%labeled = labelmatrix(cc);
% %put image around each character
% % for i=1: cc.CC.NumObjects
% %     if(cc.CC.PixelIdxList(i)<1000)
% %         
% % 
% %     
% % end
% %%object1=bwselect(img,8);
% %%imshow(object1);
% imshow(img);
