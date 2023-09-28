member(X, [X|_]).
member(X, [_|Ys]) :- member(X, Ys).

select(X, [X|Tail], Tail).
select(X, [H|Tail], [H|SelectedTail]) :-
    select(X, Tail, SelectedTail).

permutation([], []).
permutation(List, [PermHead|PermTail]) :-
    select(PermHead, List, RemainingList),
    permutation(RemainingList, PermTail).

bird(raven).
bird(chicken).
bird(toucan).

list_of_birds([]).
list_of_birds([Bird|Tail]) :-
    bird(Bird),
    list_of_birds(Tail).

list_of_five_birds(X) :-
    X = [_, _, _, _, _],
    list_of_birds(X).




