list([]).
list([_|Xs]) :- list(Xs).

my_member(X, [X|_]).
my_member(X, [_|Ys]) :- my_member(X, Ys).