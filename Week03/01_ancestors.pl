parent(alice, brian).
parent(brian, carol).
parent(carol, dan).

ancestor(Anc, Desc):-
  ancestor(Pers, Desc),
  parent(Anc, Pers).

ancestor(Anc, Desc):-
  parent(Anc, Desc).




