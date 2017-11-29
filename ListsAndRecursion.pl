/* E... Element to be added or removed, L... List (Always first)
L ... List to be manipulated (always second)*/
prepend(E, L, [E|L]).
addElement(E, [], [E]).
addElement(E, [H|T], [H|ExtT]) :- addElement(E, T, ExtT).
hasLength([], 0).
hasLength([H|T], X) :- hasLength(T, XT), X is XT + 1.
remove(E, [E|Tail], Tail).
remove(E, [H|T], [H|RedT]) :- remove(E, T, RedT).