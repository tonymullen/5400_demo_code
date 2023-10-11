nice_color(car1).
nice_color(car2).
nice_color(car3).
nice_color(car4).

fast(car1).
fast(car2).
fast(car3).
fast(car4).

smells_good(car1).
smells_good(car2).
smells_good(car3).
smells_good(car4).

unique_style(car1).
unique_style(car2).
unique_style(car3).
unique_style(car4).

cheap(car1).
cheap(car2).

good_mileage(car1).
good_mileage(car3).
good_mileage(car5).

meets_criteria(X) :-
    nice_color(X),
    fast(X),
    smells_good(X),
    unique_style(X),
    cheap(X).

meets_criteria(X) :-
    nice_color(X),
    fast(X),
    smells_good(X),
    unique_style(X),
    good_mileage(X).
