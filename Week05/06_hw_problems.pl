
orderedTriples([], [], [], []).
orderedTriples([H1|T1], [H2|T2], [H3|T3], [[OrdH1, OrdH2, OrdH3]|OrdTripTail]) :-
    msort([H1, H2, H3], [OrdH1, OrdH2, OrdH3]),
    orderedTriples(T1, T2, T3, OrdTripTail).

no_doubles([], []).
no_doubles([H|T], [H|DeletedTail]) :-
    delete(T, H, DeletedList),h
    no_doubles(DeletedList, DeletedTail).

    