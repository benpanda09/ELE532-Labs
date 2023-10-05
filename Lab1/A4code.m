figure; 
p = @(t) 1.0.*((t>=0)&(t<1)); % creating u(t) function 
t = (-1:0.01:2); %initializing t
plot (t,p(t)); 
xlabel('t'); 
ylabel('p(t) = u(t)-u(t-1)');
axis([-1 2 -.1 1.1]); 

%this is B1 code not A4