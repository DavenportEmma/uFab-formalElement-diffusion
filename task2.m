%% Task 2 and 3
C_vector = zeros(1,100);
C_vector(1:2) = 2e19;

plot(C_vector);

hold on;

for j = 1:5
    C_vector(1) = 0.5*((max(C_vector) + C_vector(2)));
    for i = 2:length(C_vector)-1  % start at 2 because there is no value left of the first element
        C_vector(i) = 0.5*(C_vector(i-1) + C_vector(i+1));
    end
    plot(C_vector);
    %pause(5)
end