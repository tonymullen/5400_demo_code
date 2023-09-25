parent(alice, brian).
parent(brian, carol).
parent(carol, dan).

ancestor(Anc, Desc):-
  parent(Anc, Desc).

ancestor(Anc, Desc):-
  parent(Anc, Pers),
  ancestor(Pers, Desc).





