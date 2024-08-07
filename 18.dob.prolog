person(bhargav,'2005-04-27').
person(john,'1582-05-04').
person(ram,'1958-02-05').
get_dob(Name,Dob):-
    person(Name,Dob).
