function letters = extract_letters(im)
%Extracts letters from a image of the playing screen. The image is assumed
%to contain only the playing field.

img = mean(im, 3);
imb = img > max(img(:))/2;
shape = strel('disk', double(uint8(length(im)/600)), 0); %maybe throw to int

imb = imerode(imb, shape);
imb = imdilate(imb,shape);

imlabels = bwlabel(bwconvhull(imb,'objects'));

for x = 1:4
    for y = 1:4
        
    end
end

letters = imlabels;