test_count(Len) :-
    create_list(Len, List),
    write("Counting list length (non-tail rec):"), nl,
    write("Local stack: "),
    list_len1(List, Length), write(" bytes"),
    nl, nl,
    write("Counting list length (tail rec):"), nl,
    write("Local stack: "),
    list_len2(List, Length), write(" bytes"), nl, !.

list_len1([], 0) :- statistics(localused, S), write(S).
list_len1([_|T], Len) :-
    list_len1(T, TailLen),
    Len is TailLen + 1.

list_len2(List, Length) :-
    list_len2(List, 0, Length).
list_len2([], Len, Len) :- statistics(localused, S), write(S).
list_len2([_|Tail], Acc, Length) :-
    AccInc is Acc + 1,
    list_len2(Tail, AccInc, Length).

create_list(0, []).
create_list(N, [item|L]) :-
    N2 is N - 1,
    create_list(N2, L).

