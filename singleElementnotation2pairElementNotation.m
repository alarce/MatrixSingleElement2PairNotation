function [pairNotation] = singleElementnotation2pairElementNotation(arrayElements)
%from array of elements to pair notation(row, column)
%image 1080x1920
n_rows = 1080;
n_columns = 1920;

number_pixels = size(arrayElements, 1);
pairNotation = zeros(number_pixels,2);

for i = 1: size(arrayElements, 1)
    row_index = mod(arrayElements(i),n_rows);
    
     if (row_index == 0)
        row_index = n_rows;
    end
    multiple = floor((arrayElements(i)-1)/n_rows); %it has to be 0 based, that´s why 1 is substracted
    column_index = multiple + 1; %matlab is not 0 based (1 based) 
    
    pairNotation(i, 1) = row_index;
    pairNotation(i, 2) = column_index;
        
end
