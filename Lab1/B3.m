

u = @(t) 1.0.*(t>=0);
p = @(t) u(t)-u(t-1);
r = @(t) (t.*p(t));


n = @(t) r(t) + r(-t+2);
n1 = @(t) n(0.5.*t); 
n2 = @(t) n1(t + 0.5);

t = (-1:0.01:5); 


plot(t, n1(t)); 
hold on;
plot(t, n2(t)); 
hold off; 
xlabel('t'); 
ylabel('n1(t) & n2(t)'); 
legend('n1(t)','n2(t)');
axis([-1 5 -.1 1.1]); 
grid; 
