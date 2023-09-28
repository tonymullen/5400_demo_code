natural_number(zero).
natural_number(s(X)):- natural_number(X).

myplus(zero, X, X):- natural_number(X).
myplus(s(X), Y, s(Z)):- myplus(X, Y, Z).

equals(X, X).

even(zero).
even(s(s(X))) :- even(X).
odd(s(X)) :- even(X).

gt(s(_), zero).
gt(s(X), s(Y)) :-
    gt(X, Y).

leq(X, X).
leq(X, Y) :-
    gt(Y, X).

times(zero, X, zero) :- natural_number(X).
times(X, zero, zero) :- natural_number(X).
times(s(X), Y, Z) :-
    Y \== zero,
    leq(s(X), Z),
    leq(Y, Z),
    myplus(R, Y, Z),
    times(X, Y, R).

times2(zero, _, zero).
times2(s(X), Y, Product) :-
  times2(Y, X, Previous),
  myplus(Previous, Y, Product).

factors(X) :-
    findall(F1, times2(F1, _F2, X), Factors),
    write(Factors).




