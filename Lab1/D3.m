load('ELE532_Lab1_Data.mat');


audio = x_audio;

numberRows = size(audio,1); 
numberCols = size(audio,2); 

numberZeros = 0; 

for i=1: numberRows
    for j=1: numberCols
    if (abs(audio(i,j)==0))
       numberZeros = numberZeros + 1;
    end
    end 
end 

fprintf("\n" + numberZeros);

sound(audio,8000)