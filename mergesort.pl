% implement yourself

% merge/3

merge([], L2, L2).
merge(L1, [], L1).

merge([Head|L1], [Head2|L2], [Head|Result]) :-
     Head =< Head2,
     merge(L1, [Head2|L2], Result).

merge([Head|L1], [Head2|L2], [Head2|Result]) :-
     Head > Head2,
     merge([Head|L1], L2, Result).

% split/3


split([], [], []).

split([H], [H], []).

split([X,Y|T], [X|L1], [Y|L2]) :-
     split(T, L1, L2).

% mergeSort/2

mergeSort([], []).
mergeSort([L], [L]).

mergeSort(L,S) :-
     split(L, Right, Left),
     mergeSort(Right, NewRight),
     mergeSort(Left, NewLeft),
     merge(NewRight, NewLeft, S).
