# Family Tree Program in Prolog

This project implements a simple family tree knowledge base using **Prolog**. It demonstrates logical inference, recursive rules, and relationship modeling by defining family members and deriving relationships such as siblings, grandparents, cousins, and descendants.

---

## Project Contents

### **family_tree.pl**
Contains:
- Basic family facts (`parent`, `male`, `female`)
  
- Derived relationship rules (`grandparent`, `sibling`, `cousin`)
  
- Recursive logic (`descendant`)

- Example family dataset

##  Prolog Concepts Used

### **Facts**

Represent known direct relationships:

parent(john, michael).

male(john).

female(mary).

Derived Rules

Infer relationships through logical pattern matching:

grandparent(X, Y) :- parent(X, Z), parent(Z, Y).

sibling(X, Y) :- parent(P, X), parent(P, Y), X \= Y.

cousin(X, Y) :- parent(P1, X), parent(P2, Y), sibling(P1, P2).

Recursion

Used for multi-generation descendant tracing:

descendant(X, Y) :- parent(Y, X).

descendant(X, Y) :- parent(Z, X), descendant(Z, Y).

Running the Program

1. Install SWI-Prolog

2. Open a terminal in the project folder

3. Start the Prolog environment

swipl

4. Load the program

?- [family_tree].

5. Run queries
   
Examples:

?- parent(john, X).

?- sibling(linda, X).

?- grandparent(X, alex).

?- cousin(X, Y).

?- descendant(X, john).
