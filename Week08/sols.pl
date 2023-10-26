sum_lists1([], [], []).
sum_lists1([H1|T1], [H2|T2], [Sum|T3]) :-
    Sum is H1 + H2,
    sum_lists1(T1, T2, T3).

sum_lists2([], L, L).
sum_lists2([H|T], [], [H|T]).
sum_lists2([H1|T1], [H2|T2], [Sum|T3]) :-
    Sum is H1 + H2,
    sum_lists2(T1, T2, T3).


substitute(_, _, void, void).
substitute(X, Y, tree(X, L1, R1), tree(Y, L2, R2)) :-
    substitute(X, Y, L1, L2),
    substitute(X, Y, R1, R2).
substitute(X, Y, tree(Z, L1, R1), tree(Z, L2, R2)) :-
    X \= Z,
    substitute(X, Y, L1, L2),
    substitute(X, Y, R1, R2).


first_n(_, 0, []).
first_n([H|T], N, [H|T2]) :-
    N > 0,
    Prev is N - 1,
    first_n(T, Prev, T2).
