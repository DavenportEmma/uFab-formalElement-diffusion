%% Task 4 and 5
C_vector = zeros(1,100);
C_vector(1:2) = 2e19;
D = 1.69e-10;   %cmhr^-1
                %temperature = 1050C, dopant = Boron
%dt = 0.2e-9;    %hr
%dx2 = 3e-10;
dt = 1e-3;      %divides 1 hour into 1000 points
dx2 = 6e-7;     %chose this number so k < 1/2
k = D*dt/(dx2^2);
xlabel('Depth');
ylabel('Concentration');
hold on;

plot(C_vector);
for j = 1:1000
    C_vector(1) = C_vector(1) + k*((max(C_vector)) - 2*C_vector(1) + C_vector(2));
    for i = 2:length(C_vector)-1  % start at 2 because there is no value left of the first element
        C_vector(i) = C_vector(i) + k*(C_vector(i-1) - 2*C_vector(i) + C_vector(i+1));
    end
    %plot(C_vector);
    %pause(5)
end
plot(C_vector);