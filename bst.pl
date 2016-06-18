% binary search tree

% insert

insert(nil, V, node(V, nil, nil)). 

insert(node(V, Left, Right), V, node(V, Left, Right)).

insert(node(V, Left, Right), W, node(V, LeftNew, Right)) :-
  W =< V,
  insert(Left, W, LeftNew).

insert(node(V, Left, Right), W, node(V, Left, RightNew)) :-
  W > V,
  insert(Right, W, RightNew).

% insertList

insertList(T, [], T).
insertList(T1, [H | Tail], T) :-
   insert(T1, H, T2),
   insertList(T2, Tail, T).

% implement yourself:

% contains/2

contains(node(V, Left, Right), V).

contains(node(V, Left, Right), W) :-
     W < V,
     contains(Left, W).

contains(node(V, Left, Right), W) :-
     W > V,
     contains(Right, W).

% maximum/2

maximum(node(V, _, nil), V).

maximum(node(V, _, Right), W) :-
     maximum(Right, W).

% minimum/2

minimum(node(V, nil, _), V).

minimum(node(V, Left, _), W) :-
     minimum(Left, W).

