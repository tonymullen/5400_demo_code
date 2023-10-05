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

animal_counts([], counts(dogs:0, birds:0)).

animal_counts([Animal|Tail], counts(dogs: DogCount, Birds)) :-
    dog(Animal),
    animal_counts(Tail, counts(dogs: OldDogCount, Birds)),
    DogCount is OldDogCount + 1.

animal_counts([Animal|Tail], counts(Dogs, birds: BirdCount)) :-
    bird(Animal),
    animal_counts(Tail, counts(Dogs, birds: OldBirdCount)),
    BirdCount is OldBirdCount + 1.


animal_counts_tr(Animals, Counts) :-
    animal_counts_tr(Animals, Counts, counts(dogs:0, birds:0)).

animal_counts_tr([], Counts, Counts).

animal_counts_tr([Animal|Tail], Counts, counts(dogs: DogCounts, Birds)) :-
    dog(Animal),
    NewDogCounts is DogCounts + 1,
    animal_counts_tr(Tail, Counts, counts(dogs: NewDogCounts, Birds)).

animal_counts_tr([Animal|Tail], Counts, counts(Dogs, birds: BirdCounts)) :-
    bird(Animal),
    NewBirdCounts is BirdCounts + 1,
    animal_counts_tr(Tail, Counts, counts(Dogs, birds: NewBirdCounts)).
