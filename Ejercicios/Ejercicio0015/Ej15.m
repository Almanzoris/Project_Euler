n = 20;
% Note how, there have to be done n+n steps to reach the other corner, and n have to be along the x axis and n along the y axis.
% Indeed, this can be calculated with the following permutation with repetitions.
w = factorial(2*n)/factorial(n)^2;