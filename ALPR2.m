clear
clc

img= imread('image10.jpg');
%pre-processing

%convert to gray and threshold
img= rgb2gray(img);
img = imbinarize(img);
img =imcomplement(img);

%apply median filter 
img = medfilt2(img,[3 3]);

%applying connected component analysis
cc = bwconncomp(img);

%extract small objects
img = bwareafilt(img,[1000 50000]);

%logical image
logicalImg=img;
%grayImg
integerImg=im2uint8(img);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%region of interest-based processing

% Initialize the blob analysis System object(TM)
blobAnalyzer = vision.BlobAnalysis('MaximumCount', 500);
[area, centroids, roi] = step(blobAnalyzer, logicalImg);

%put rectangles around character 
labeledImg = insertShape(integerImg, 'rectangle', roi); 

%convert labeled image to gray logical image
labeledImg=rgb2gray(labeledImg);
labeledImg=imbinarize(labeledImg);

imshow(labeledImg);

results = ocr(integerImg, 'TextLayout', 'Block'); 
 
