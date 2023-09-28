member(X, [X|_]).
member(X, [_|Ys]) :- member(X, Ys).

select(X, [X|Tail], Tail).
select(X, [H|Tail], [H|SelectedTail]) :-
    select(X, Tail, SelectedTail).

permutation([], []).
permutation(List, [PermHead|PermTail]) :-
    select(PermHead, List, RemainingList),
    permutation(RemainingList, PermTail).


