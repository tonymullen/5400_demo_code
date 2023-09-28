edge(a,b).
edge(a,c).
edge(b,d).
edge(c,d).
edge(d,e).
edge(f,g).

% connected2(X, Y) :- 
%     connected(X, Y).

% connected2(X, Y) :- 
%     connected(Y, X).

connected(X, Y):
    edge(X, Y).
connected(X, Y) :- 
    edge(X, Z), 
    connected(Z, Y).