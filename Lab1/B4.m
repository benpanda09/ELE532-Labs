figure; 

p = @(t) 1.0.*((t>=0)&(t<1)); 
r = @(t) t.*p(t);
n = @(t) r(t) + r(-t+2);
n3 = @(t) n(t + 0.25); 
n4 = @(t) n3(0.5.*t);
t = (-1:0.01:5); 


plot(t, n3(t)); 
hold on;
plot(t, n4(t)); 
hold off; 
xlabel('t'); 
ylabel('n3(t) & n4(t)'); 
legend('n3(t)','n4(t)');
axis([-1 5 -.1 1.1]); 
grid; 
