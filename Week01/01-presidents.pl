president(barack).
president(georgew).
president(bill).
president(george).
president(ronald).

parent(barack, sasha).
parent(georgew, jenna).
parent(bill, chelsea).
parent(george, georgew).
parent(ronald, ron).

female(sasha).
female(jenna).
female(chelsea).
male(georgew).
male(ron).

daughter(X, Y) :- female(X),
                  parent(Y, X).


