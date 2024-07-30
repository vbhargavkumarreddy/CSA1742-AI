person(john, date(1990, 5, 15)).
person(mary, date(1985, 10, 20)).
person(peter, date(1992, 3, 8)).
person(lisa, date(1988, 12, 4)).

% Query to find the date of birth of a person
dob(Name, DateOfBirth) :-
    person(Name, DateOfBirth).

% Query to find all people born after a certain year
born_after(Year, Name) :-
    person(Name, date(Year1, _, _)),
    Year1 > Year.

% Query to find all people born in a specific month
born_in_month(Month, Name) :-
    person(Name, date(_, Month, _)).

% Query to find all people in the database
all_people(Names) :-
    findall(Name, person(Name, _), Names).


person(john, '1990-05-15').
person(susan, '1985-11-30').
person(michael, '1995-02-10').
person(emily, '2000-08-22').

% Predicate to retrieve the DOB of a person
get_dob(Name, DOB) :-
    person(Name, DOB).

% Example queries
?- get_dob(john, DOB).
DOB = '1990-05-15'.
