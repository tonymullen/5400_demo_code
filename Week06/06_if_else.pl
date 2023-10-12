qualified(sandy).
qualified(pat).
qualified(ellen).
qualified(mort).
qualified(ali).
qualified(fred).

candidates([ali, beth, chris, dave, ellen, fred, ginger]).

status(Person, Status) :-
    candidates(Candidates),
    member(Person, Candidates),!,
    (
        qualified(Person)
    ->
        Status = qualified_candidate
    ;
        Status = unqualified_candidate
    ).

status(_, not_a_candidate).
