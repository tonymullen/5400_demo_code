facility(Pers, Fac) :-
  book_overdue(Pers, _Book),
  !,
  basic_facility(Fac).

facility(_Pers, Fac) :-
  general_facility(Fac).

basic_facility(reference).
basic_facility(enquiries).

additional_facility(borrowing).
additional_facility(inter_library_loan).

general_facility(X) :- basic_facility(X).
general_facility(X) :- additional_facility(X).

client('A. Jones').
client('W. Metesk').

book_overdue('C. Watzer', book100089).
book_overdue('A. Jones', book29907).
book_overdue('A. Jones', book29908).

test1 :- facility('W. Metesk', enquiries).
test2 :- facility('W. Metesk', borrowing).
test3 :- facility('A. Jones', enquiries).
test4 :- facility('A. Jones', borrowing).
