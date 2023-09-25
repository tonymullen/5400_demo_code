edge(a,b).
edge(a,c).
edge(b,d).
edge(c,d).
edge(d,e).
edge(f,g).

% Implement connected/3
% Recursively determine whether there
% is a (directed) path from node to node
% between the first and second arguments.

% The third argument will collect the nodes
% in the path into a list.

% Example:

% ?- connected(a, e, X).
% X = [a, b, d, e] ;
% X = [a, c, d, e] ;
% false.

