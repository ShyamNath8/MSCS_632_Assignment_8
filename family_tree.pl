/* ---------- Basic Facts ---------- */

% Gender
male(john).
male(michael).
male(bob).
male(alex).
male(david).

female(mary).
female(susan).
female(linda).
female(sophia).
female(rachel).

% Parent relationships
parent(john, michael).
parent(john, linda).
parent(mary, michael).
parent(mary, linda).

parent(susan, bob).
parent(susan, rachel).
parent(michael, alex).
parent(linda, david).

/* ---------- Derived Relationships ---------- */

% X is the father or mother of Y (already given by parent(X,Y)).

% Grandparent Rule
grandparent(X, Y) :- 
    parent(X, Z),
    parent(Z, Y).

% Sibling Rule
sibling(X, Y) :-
    parent(P, X),
    parent(P, Y),
    X \= Y.

% Cousin Rule
cousin(X, Y) :-
    parent(P1, X),
    parent(P2, Y),
    sibling(P1, P2),
    X \= Y.

% Descendant Rule (recursive)
descendant(X, Y) :- 
    parent(Y, X).              % base case
descendant(X, Y) :- 
    parent(Z, X),
    descendant(Z, Y).          % recursive step
