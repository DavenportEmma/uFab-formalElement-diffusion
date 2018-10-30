%% Task 6
C_vector = zeros(1,100);
C_vector(1:2) = 2e19;
D = 1.69e-10;   %cm^2 hr^-1
                %temperature = 1050C, dopant = Boron
%dt = 0.2e-9;    %hr
%dx2 = 3e-10;
dt = 1e-3;      %divides 1 hour into 1000 points
dx2 = 6e-7;     %chose this number so k < 1/2
k = D*dt/(dx2^2);
xlabel('Depth');
ylabel('Concentration');

semilogy(C_vector);

C_vector(1) = 2e19;

hold on
for j = 1:1000
    
    for i = 2:length(C_vector)-1  % start at 2 because there is no value left of the first element
        C_vector(i) = C_vector(i) + k*(C_vector(i-1) - 2*C_vector(i) + C_vector(i+1));
    end
   % semilogy(0:length(C_vector) -1, C_vector);

end
semilogy(C_vector);