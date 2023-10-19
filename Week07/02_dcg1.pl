sentence -->
    subject,
    verb,
    object.

subject -->
    modifier,
    noun.

object -->
    modifier,
    noun.

modifier --> [the].

noun --> [cat].
noun --> [mouse].
noun --> [polar, bear].

verb --> [chases].
verb --> [eats].

% ?- sentence([the, cat, chases, the, mouse], []).
% ?- sentence(Sentence, []).
% ?- sentence(Tree, Sentence, []).
% ?- phrase(sentence, Sentence).
