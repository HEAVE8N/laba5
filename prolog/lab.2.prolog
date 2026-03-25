f([], C, B, R) :- 
    R is max(C, B), !.

f([H|T], C, B, R) :-
    H > 0, !,
    NC is C + 1,
    f(T, NC, B, R).

f([_|T], C, B, R) :-
    NB is max(C, B),
    f(T, 0, NB, R).

run :-
    read(L),
    f(L, 0, 0, Res),
    write(Res).

:- run.
