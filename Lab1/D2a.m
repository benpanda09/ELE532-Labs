load('ELE532_Lab1_Data.mat')
numberRows = size(B,1);
numberCols = size(B,2);


for i=1:numberRows
    for j=1:numberCols
        if (abs(B(i,j)) < 0.01)
            B(i,j)= 0; 
        end
    end
end

%part A