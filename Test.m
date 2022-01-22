[file path]=uigetfile('*.jpg*');
img=imread([path file]);
img = im2bw(img);
img = ~img;
seg  = bwconncomp(img);
pl = seg.PixelIdxList;
num = 0;
for i = 1 : length(pl)
    obj = seg.PixelIdxList{i};
    im_obj = ones(size(img));
    im_obj(obj)=0;
    features = imagefeatures(im_obj);
    num = num * 10 + vec2ind(net(features));
    
end

disp(['The number is : '  num2str(num)]);