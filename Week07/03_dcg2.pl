sentence -->
    noun_phrase, verb_phrase.

noun_phrase -->
    determiner, noun_phrase2.
noun_phrase -->
    noun_phrase2.

noun_phrase2 -->
    noun.
noun_phrase2 -->
    adjective, noun_phrase2.

% verb_phrase -->
%     verb.
verb_phrase -->
    verb, noun_phrase.

determiner --> [the].
determiner --> [a].
adjective --> [delicious].
adjective --> [decorated].
noun --> [pieplate].
noun --> [surprise].
verb --> [contains].
