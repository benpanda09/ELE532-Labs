figure; 

p = @(t) 1.0.*((t>=0)&(t<1)); 
r = @(t) t.*p(t); 
t = (-1:0.01:2); 

plot(t, r(t));
xlabel('t'); 
ylabel('r(t)'); 
axis([-1 2 -.1 1.1]); 
grid; 


figure; 

p = @(t) 1.0.*((t>=0)&(t<1)); 
n = @(t) r(t) + r(-t+2);
t = (-1:0.01:2); 

plot(t, n(t));
xlabel('t'); 
ylabel('n(t)'); 
axis([-1 2 -.1 1.1]); 
grid; 
