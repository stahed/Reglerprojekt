%tests the functions in bildanalys


path = pwd;
impath = [path(1:find(path == filesep, 1 , 'last')) 'Spelplaner - manuell' filesep '1.png'];
im = imread(impath);

letters = extract_letters(im);