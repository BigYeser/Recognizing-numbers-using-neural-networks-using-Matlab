[file,path]=uigetfile('*.jpg*');
img = imread([path file]);
img = im2bw(img);
target=input('Enter the number: ');
features = imagefeatures(img);
t=zeros(3,1);
try
    load('data')
    p = [p features ];    
    t(target) = 1;
    targets = [ targets t ];
    catch
    p = [ features ];    
    t(target)=1;
    targets=[ t ];
end
save('data','targets','p')