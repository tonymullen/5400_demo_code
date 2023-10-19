% Standard append
append([],Ys,Ys).
append([X|Xs],Ys,[X|Zs]) :- append(Xs,Ys,Zs).

append_test:-
    append([a,b,c,d,e,f,g,h], [i,j,k], L),
    write(L).

% Difference list append
append_dl(Xs-Ys, Ys-Zs, Xs-Zs).

append_test_dl:-
    append_dl([a,b,c,d,e,f,g,h|T]-T, [i,j,k]-[], L-[]),
    write(L).

% Naive list reversal
naive_reverse([],[]).
naive_reverse([X|Xs],Ys) :-
    naive_reverse(Xs,Rs),
    append(Rs,[X],Ys).

% Diff list reverse
reverse_dl(Xs, Rs) :- rev_dl(Xs, Rs-[]).

rev_dl([], T-T).
rev_dl([X|Xs], Rs-T) :- rev_dl(Xs, Rs-[X|T]).
