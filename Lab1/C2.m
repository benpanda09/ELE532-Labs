f = @(t) exp(-2.*t).*cos(4*pi*t);
u = @(t) 1.0.*(t>=0); 
axis([-2 2 -.1 1.1]); 
g = @(t) f(t).*u(t); 
t = (-2:0.01:4);

s = @(t) g(t+1); 


plot(t, s(t)); 
xlabel('t'); 
ylabel('s(t)'); 
grid; 


