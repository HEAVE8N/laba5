rev(0, Acc, Acc) :- !.
rev(N, Acc, R) :-
    N > 0,
    NextAcc is (Acc * 10) + (N mod 10),
    NextN is N // 10,
    rev(NextN, NextAcc, R).

go :-
    read(N),
    rev(N, 0, R),
    write(R).

:- go.
