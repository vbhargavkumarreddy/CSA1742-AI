move_disk(1, Source, Destination, _) :-
    write('Move disk 1 from '), write(Source), write(' to '), write(Destination), nl.

% Move N disks from Source peg to Destination peg using Auxiliary peg
move_disk(N, Source, Destination, Auxiliary) :-
    N > 1,
    N1 is N - 1,
    move_disk(N1, Source, Auxiliary, Destination),
    write('Move disk '), write(N), write(' from '), write(Source), write(' to '), write(Destination), nl,
    move_disk(N1, Auxiliary, Destination, Source).

% Solve the Towers of Hanoi puzzle with N disks
towers_of_hanoi(N) :-
    move_disk(N, 'Source', 'Destination', 'Auxiliary').


move(1,X,Y,_) :-
         write('Move top disk from '),
         write(X),
         write(' to '),
         write(Y),
nl.
     move(N,X,Y,Z) :-
         N>1,
         M is N-1,
         move(M,X,Z,Y),
         move(1,X,Y,_),
         move(M,Z,Y,X).
