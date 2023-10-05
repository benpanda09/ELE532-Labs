load('ELE532_Lab1_Data.mat')

B([abs(B) >= 0.01]) = 0; %this is faster (Elasped time) and less code
