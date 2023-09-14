% Comments begin with percent symbol

female(marge).
female(june).
female(maggie).
female(lisa).
female(mary).
female(jenny).
female(kate).

male(homer).
male(ward).
male(wally).
male(ted).
male(tim).
male(tom).

parent(marge, maggie).
parent(marge, lisa).
parent(homer, maggie).
parent(homer, lisa).
parent(june, wally).
parent(june, ted).
parent(ward, wally).
parent(ward, ted).
parent(lisa, jenny).
parent(lisa, kate).
parent(wally, jenny).
parent(wally, kate).
parent(mary, tim).
parent(mary, tom).
parent(ted, tim).
parent(ted, tom).

sibling(Sib1, Sib2) :-
  parent(Parent, Sib1),
  parent(Parent, Sib2),
  Sib1 \= Sib2.

grandparent(GrandPar, GrandChild) :-
  parent(GrandPar, Parent),
  parent(Parent, GrandChild).

aunt(Aunt, Person) :-
  sibling(Aunt, Parent),
  parent(Parent, Person),
  female(Aunt).

uncle(Uncle, Person) :-
  sibling(Uncle, Parent),
  parent(Parent, Person),
  male(Uncle).