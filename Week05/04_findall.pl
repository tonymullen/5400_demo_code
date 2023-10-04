% This will provide an endless supply of
% ever longer lists of things. This may be
% okay if used with backtracking (or the ;)
% but it will break if we try to use
% findall to collect them all as is done below.
listOfThings([]).
listOfThings([thing|RestOfThem]) :-
  listOfThings(RestOfThem).

fruit(apple).
fruit(banana).
fruit(cherry).

fruitCombo([Fruit1, Fruit2, Fruit3]) :-
  fruit(Fruit1),
  fruit(Fruit2),
  fruit(Fruit3).

% Since fruitCombo fills in a list of
% finite length, we can collect all
% results with findall.
testFruitCombo :-
  findall(X, fruitCombo(X), Xs),
  writeLines(Xs), nl.

writeLines([]).
writeLines([H|T]) :-
  write(H), nl,
  writeLines(T).

