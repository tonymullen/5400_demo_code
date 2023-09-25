subtractionPred1(X, Y, Z) :-
  Z is X - Y.

test1 :- subtractionPred1(5, 2, Dif), write(Dif), nl.
test2 :- subtractionPred1(2, 5, Dif), write(Dif), nl.

% Error due to uninstatiated variable
test3 :- subtractionPred1(Sum, 2, 3), write(Sum), nl.
test4 :- subtractionPred1(marge, homer, Dif), write(Dif), nl.

myMinusSignPred1(X, Y, Z) :-
  Z = X - Y.

myBinaryStructurePred1(X, Y, Z) :-
  Z = my_bin_struct(X, Y).

test5 :- myMinusSignPred1(5, 3, Out), write(Out), nl.
test6 :- myMinusSignPred1(marge, homer, Out), write(Out), nl.

myMinusSignPred2(X, Y, Z) :-
  Z = X - Y + X.

test7 :- myMinusSignPred2(5, 3, Out), write(Out), nl.
test8 :- myMinusSignPred2(marge, homer, Out), write(Out), nl.

test9 :-
  X = 5,
  X is 3 + 2.

test10 :-
  X = 5,
  X is 3 + 3.

test11(X) :-
  X is 7,
  X is 3 + 4,
  X is 1 + 2 + 2 + 2.

test12 :-
  X is 7,
  X is 3 + 4 + 1.

test13 :-
  X = 7 - 1,
  Y - Z = X,
  write(X),
  nl,
  write(Y),
  nl,
  write(Z),
  X is 6.

test14 :-
  X is 7 + 1,
  write(X), nl,
  Y = 7 + 1,
  write(Y), nl,
  X = Y.

test15 :-
  X is 7 + 1,
  write(X), nl,
  Y = 7 + 1,
  write(Y), nl,
  X is Y.

test16 :-
  X = marge,
  Y is 3 + 2,
  marge + 5 = X + Y.

test17 :-
  X = marge,
  Y is 3 + 2,
  Out = X + Y,
  write(Out), nl.