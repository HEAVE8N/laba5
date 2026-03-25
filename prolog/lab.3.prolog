m(X, [X|_]).
m(X, [_|T]) :- m(X, T).

c([], _, []).
c([H|T], B, R) :- m(H, B), !, c(T, B, R).
c([H|T], B, [H|R]) :- c(T, B, R).

go :-
    nl, write('--- Дополнение A \\ B ---'), nl,
    write('Введите список A (например, [1,2,3].): '), 
    flush_output, read(A),
    write('Введите список B (например, [2].): '), 
    flush_output, read(B),
    c(A, B, Res),
    nl, write('Результат: '), write(Res), nl.
