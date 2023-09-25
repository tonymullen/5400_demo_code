natural_number(zero).
natural_number(s(X)):- natural_number(X).

myplus(zero, X, X):- natural_number(X).
myplus(s(X), Y, s(Z)):- myplus(X, Y, Z).
