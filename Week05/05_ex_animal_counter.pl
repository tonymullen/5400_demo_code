dog(shepherd).
dog(labrador).
dog(pitbull).
dog(poodle).

bird(hawk).
bird(pigeon).
bird(bluejay).
bird(chicken).

% Implement animal_counts/2
% The predicate will take two arguments. The first
% argument will be a list of animals (dogs and birds).
% The second argment will be instantiated as a structure
% that holds counts for dogs and birds in the form of
% counts(dogs:<number of dogs> , birds: <number of birds>)

% Example:

% ?- animal_counts([pigeon, pitbull, chicken], X).
% X = counts(dogs:1, birds:2)

% Note that the : symbols here are nothing special. They are
% behaving in the same way that + or - symbols behave in
% unification, simply as atomic punctuation with no built in
% semantics.

% The predicate does NOT need to work both ways. I.e., it does
% not need to be able to take an instantiated second argument and
% correctly instantiate the first argument.


