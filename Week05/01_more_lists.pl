prefix([], _).
prefix([X|Xs], [X|Ys]) :- prefix(Xs, Ys).

suffix(X, X).
suffix(X, [_|Tail]) :-
    suffix(X, Tail).

my_append([], Ys, Ys).
my_append([X|Xs], Ys, [X|Zs]) :- 
    my_append(Xs, Ys, Zs).

sublist1(List1, List2) :-
    prefix(List1, List3),
    suffix(List3, List2).

sublist2(List1, List2) :-
    append(_, Suffix, List2), % Suffix is a suffix of List2
    append(List1, _, Suffix). % List1 is a prefix of Suffix

sublist3(List1, List2) :-
    append([_, List1, _], List2).

sum_list([], 0).
sum_list([X|Tail], Sum) :-
    sum_list(Tail, TailSum),
    Sum is TailSum + X.

sum_list_tr(List, Sum) :-
    sum_list_tr(List, 0, Sum).

sum_list_tr([], X, X).
sum_list_tr([Head|Tail], Acc, Sum) :-
    X is Acc + Head,
    sum_list_tr(Tail, X, Sum).

sum_list3([], 0).
sum_list3([X], X).
sum_list3([X, Y|Tail], Sum) :-
    Z is X + Y,
    sum_list3([Z|Tail], Sum).

list_len([], 0).
list_len([_|Tail], Len) :-
    list_len(Tail, TailLen),
    Len is TailLen + 1.

list_len_tr(List, Length) :-
    list_len_tr(List, 0, Length).

list_len_tr([], TotalLen, TotalLen).
list_len_tr([_|Tail], Acc, Length) :-
    NewAcc is Acc + 1,
    list_len_tr(Tail, NewAcc, Length).

    




