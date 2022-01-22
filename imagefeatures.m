function features = imagefeatures(img)
    
    temp = ~img;
    [rows,cols] = find(temp);
    mxCols = max(cols);
    mnCols = min(cols);
    mxRows = max(rows);
    mnRows = min(rows);
    img = img(mnRows:mxRows,mnCols:mxCols);
    img = imresize(img,[180 90]);
    
    i1 = img(1:60,1:30);
    i2 = img(1:60,31:60);
    i3 = img(1:60,61:90);
    i4 = img(61:120,1:30);
    i5 = img(61:120,31:60);
    i6 = img(61:120,61:90);
    i7 = img(121:180,1:30);
    i8 = img(121:180,31:60);
    i9 = img(121:180,61:90);
    %%%%%%%%%%%%%%%
    x1 = sum(sum(i1));
    x2 = sum(sum(i2));
    x3 = sum(sum(i3));
    x4 = sum(sum(i4));
    x5 = sum(sum(i5));
    x6 = sum(sum(i6));
    x7 = sum(sum(i7));
    x8 = sum(sum(i8));
    x9 = sum(sum(i9));
       
    features = [ x1 x2 x3 x4 x5 x6 x7 x8 x9 ]';


end