sentence(s(NP, VP)) -->
    noun_phrase(NP), verb_phrase(VP).

noun_phrase(np(D, N)) -->
    determiner(D), noun_phrase2(N).
noun_phrase(np(N)) -->
    noun_phrase2(N).

noun_phrase2(np2(N)) -->
    noun(N).
noun_phrase2(np2(A, N)) -->
    adjective(A), noun_phrase2(N).

% verb_phrase(vp(V)) -->
%     verb(V).
verb_phrase(vp(V, N)) -->
    verb(V), noun_phrase(N).

determiner(det(the)) --> [the].
determiner(det(a)) --> [a].
adjective(adj(decorated)) --> [decorated].
noun(n(pieplate)) --> [pieplate].
noun(n(surprise)) --> [surprise].
verb(v(contains)) --> [contains].
