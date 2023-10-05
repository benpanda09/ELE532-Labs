figure;
t = (-2:2); %initalizing t value
f = @(t) exp(-t).*cos(2*pi*t); %creating function 

plot(t,f(t)); %plotting graph
xlabel('t'); %labeling x axis
ylabel('f(t)'); %labeling y axix
grid; %display graph in grid 

figure;
t = (-2:0.01:2); 
f = @(t) exp(-t).*cos(2*pi*t);

plot(t,f(t));
xlabel('t');
ylabel('f(t)');
grid;
