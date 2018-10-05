# uFab-formalElement-diffusion
 
 
Background
Read Chapter 7 in Silicon VLSI Technology: Fundamentals, Practice And Modelling by James D. Plummer et al. Pay particular attention to Section 7.5.1. Numerical Solutions of the Diffusion Equation are discussed in Computational Physics, 2nd Edition, by Nicholas J. Giordano and Hisao Nakanishi. Both books are available in Kevin Street Library. You should also read my notes on Diffusion and the Chapter on Diffusion in Plummer. 
A good analogy to dopant diffusion is heat diffusion-the equations are similar. Here are some references, with code fragments which you may find useful.
 http://physics.gac.edu/~huber/envision/tutor2/diff1d.htm
http://www.colorado.edu/geography/class_homepages/geog_4023_s07/labs/html/PDE_lab.html
http://homepages.ulb.ac.be/~dgonze/INFO/matlab/fick.m
http://homepages.ulb.ac.be/~dgonze/INFO/matlab/fick2D.m

The task
Your job is to write a program, using MATLAB or another language of your choosing, to build a mathematical model of Diffusion and explore its utility. 
	Write a MATLAB program to numerically solve the Diffusion Equation using finite differences. Initially, Simplify the model by taking     DΔt/(Δx^2 )=1/2. This allows us to simplify the Diffusion equation from that in Eq (7.38 ) to Eq (7.40)
	Model the case of a Drive-in Diffusion of Boron. Model the initial profile as a delta function, that is a high concentration predeposition. Use a surface concentration of 2 x 1019 cm-3. This is shown below…and there is some simple MATLAB to generate this initial vector. You will need to think carefully what to do with the first point, as there is no point to the left of it. You can use some common sense (what would be a reasonable value to use here?), or go off and read about Boundary conditions (and then use common sense!). 
 
%
% Matlab code fragment to generate initial profile 
%
%
C_vector = zeros(1,100);
C_vector(1:2) = 2e19;
 
plot(C_vector);
xlabel('Depth');
ylabel('Concentration');
 
Figure 1. Initial profile

	Apply the finite difference equation to every point on the curve, starting on the left. Then plot the new curve. Then apply the finite difference equation again to every point on the new curve, starting on the left.  Keep doing this multiple times and describe what happens.
	Once this is working, choose ‘reasonable’ values for D, Δt, Δx , it is up to you to define reasonable!! Modify your code to implement Eq (7.38). 
	Model the case of a Drive-in Diffusion. Use the same initial profile  in Figure 1. - a delta function. Run your model  for a ‘typical’ Diffusion time and Temperature. According to the analytical solutions for the Diffusion equations in the text, you should get a Gaussian profile from your model. You can get values for typical Diffusion time and Temperatures from the Plummer book or some of my Problems. Do you? Prove it!  In your results, give the conditions (time, temperature) modelled and graphs of the dopant profile from both your model and the analytical solution from the text. If you wish, you can also use simulation results from online or offline TCAD tools. 
	Model the case of a Constant Source Diffusion. Model the initial profile as a delta function and keep the surface concentration constant. Run your model  for a ‘typical’ Diffusion time and Temperature. You can get values for typical Diffusion time and Temperatures from the Plummer book or some of my Problems. According to the analytical solutions for the Diffusion equations in the text, you should get an erfc profile from your model. Do you? Prove it!
	In your results, give the conditions (time, temperature, Δt, Δx) modelled and graphs of the dopant profile from both your model and the analytical solution from the text. If you wish, you can also use simulation results from online or offline TCAD tools. 
	Show, using suitable examples, that if  DΔt/(Δx^2 )>1/2 that Eq (7.40) becomes unstable and discuss the physical interpretation of this result. In your results, give the conditions (time, temperature, Δt, Δx) modelled and how the instability manifested itself when the code is run. 

Assessment 
 What I want to see is 
A short, maximum 10 minute, Powerpoint Presentation outlining your results. Your slides should cover 
	Introduction to the Problem
	Coding
	Results/ Screenshots
	Conclusions
	Demonstration +Movie
YOU MUST GIVE ME A HARDCOPY OF THE CODE LISTING AND SLIDES ON THE DAY. OTHERWISE YOU WILL NOT BE MARKED.
Notes
Be ready for questions after your presentation. The Results section should form the majority of the Presentation. In your conclusions, discuss what problems you encountered during the exercise. Carefully discuss any changes or assumptions you made in order to complete the exercise. State one good thing and one bad thing about the exercise.  How would you improve it?  

