u = @(t) 1.0.*(t>=0); 
t= (0:0.01:4)'; 
T = t*ones(1,4); % This line of code basically changes t (401x1) matrix into a 401x4 matrix

for alpha = 1:2:7 %creates 4 graphs with value of alpha being 1, 3, 5, 7
    s = @(t) exp(-2).*exp(-T*diag(alpha)).*cos(4*pi*T).*u(T); 
    %creating the function s(t), the reason why we need to multiply T by the matrix created from alpha, this is to make sure T can be individually scaled.                        
    plot(t,s(t)); %plotting the graph
    xlabel('t'); 
    ylabel('s(t)'); 
    hold on; %put it on the same figure (accumulating)
end

legend('alpha1', 'alpha3', 'alpha5', 'alpha7'); 
hold off; %plots the 'accumulated' graph 




