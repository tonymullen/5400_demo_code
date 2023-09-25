test_reverse(Len) :-
    create_list(Len, List),
    % write("Reversing: "), write(List), nl, nl,
    write("Reverse (non-tail rec):"), nl,
    write("Local stack: "),
    reverse1(List, _RevList), write(" bytes"), nl,
    % write(RevList), nl,
    nl, nl,
    write("Reverse (tail rec):"), nl,
    write("Local stack: "),
    reverse2(List, _RevListTR), write(" bytes"), nl,
    % write(RevListTR),
    nl, !.


reverse1([], []) :- statistics(localused, S), write(S).
reverse1([X|Xs], R) :-
    reverse1(Xs, Rs),
    append(Rs, [X], R).

reverse2(L, R) :-
    reverse2(L, [], R).
reverse2([], R, R) :- statistics(localused, S), write(S).
reverse2([X|Xs], A, R) :-
    reverse2(Xs, [X|A], R).

create_list(0, []).
create_list(N, [N|L]) :-
    N2 is N - 1,
    create_list(N2, L).