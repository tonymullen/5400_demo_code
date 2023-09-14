three_of_a_kind(X, X, X).

% test_unify1(X, Y, Z) :-
%   three_of_a_kind(my_strct(marge, X), my_strct(Y, homer), Z).

% test_unify2(X, Y, Z) :-
%   three_of_a_kind(my_strct(X, homer), my_strct(Y, homer), Z).

% test_unify3(X, Y, Z) :-
%   three_of_a_kind(my_strct(X, Y), my_strct(Y, homer), Z).

% test_unify4(X, Y, Z) :-
%   three_of_a_kind(my_strct(marge, homer), my_strct(X, Y), my_strct(Y, Z)).

% test_unify5(X, Y, Z) :-
%   three_of_a_kind(my_strct(marge, X), my_strct(Y, Z), Z).

% test_unify6(X, Y, Z) :-
%   set_prolog_flag(occurs_check, true),
%   three_of_a_kind(my_strct(marge, X), my_strct(Y, Z), Z).