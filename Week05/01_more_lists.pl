prefix([], _).
prefix([X|Xs], [X|Ys]) :- prefix(Xs, Ys).

suffix(X, X).
suffix(X, [_|Tail]) :-
    suffix(X, Tail).
