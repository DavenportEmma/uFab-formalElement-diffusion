%% Task 6
C_vector = zeros(1,200);
C_vector(1:2) = 2e19;
D = 1.69e-10;   %cm^2 hr^-1
                %temperature = 1050C, dopant = Boron
dt = 1e-3;      %divides 1 hour into 1000 points
dx = 6e-7;      %chose this number so k < 1/2
k = D*dt/(dx^2);

X_vector = (0:dx:(length(C_vector)*dx)-dx);
    
% semilogy(X_vector, C_vector);
plot(X_vector, C_vector);
xlabel('Depth (cm)');
ylabel('Concentration (/cm^3)');

C_vector(1) = 2e19; %keep the first element constant for constant
hold on
for j = 1:1000
    for i = 2:length(C_vector)-1  % start at 2 because there is no value left of the first element
        C_vector(i) = C_vector(i) + k*(C_vector(i-1) - 2*C_vector(i) + C_vector(i+1));
    end
%    pause(0.005)
%    semilogy(X_vector, C_vector);
%    plot(X_vector, C_vector);
end
plot(X_vector, C_vector);
% semilogy(X_vector, C_vector); 