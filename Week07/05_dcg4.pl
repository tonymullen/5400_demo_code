sentence(s(NP, VP)) -->
    noun_phrase(NP, Num), verb_phrase(VP, Num).

noun_phrase(np(D, N), Num) -->
    determiner(D, Num), noun_phrase2(N, Num).
noun_phrase(np(N), Num) -->
    noun_phrase2(N, Num).

noun_phrase2(np2(N), Num) -->
    noun(N, Num).
noun_phrase2(np2(A, N), Num) -->
    adjective(A), noun_phrase2(N, Num).

verb_phrase(vp(V), Num) -->
    verb(V, Num, intransitive).
verb_phrase(vp(V, N), Num) -->
    verb(V, Num, transitive), noun_phrase(N, _Num).

determiner(det(the), _Num) --> [the].
determiner(det(a), singular) --> [a].
adjective(adj(decorated)) --> [decorated].
noun(n(pieplate), singular) --> [pieplate].
noun(n(pieplates), plural) --> [pieplates].
noun(n(surprise), singular) --> [surprise].
noun(n(surprises), plural) --> [surprises].
verb(v(glitters), singular, intransitive) --> [glitters].
verb(v(glitter), plural, intransitive) --> [glitter].
verb(v(contains), singular, transitive) --> [contains].
verb(v(contain), plural, transitive) --> [contain].
