isotree(X, X).
isotree(tree(Value, Left1, Right1), tree(Value, Left2, Right2)):-
    isotree(Left1, Left2),
    isotree(Right1, Right2).
isotree(tree(Value, Left1, Right1), tree(Value, Left2, Right2)):-
    isotree(Left1, Right2),
    isotree(Right1, Left2).
