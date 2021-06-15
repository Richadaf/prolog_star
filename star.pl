starList(X):- newStar(X), printXtoY(1,X).

list(0).
list(X):- write('*'), Y is X-1, list(Y).

newStar(0).
newStar(A):- list(A), nl, M is A-1, newStar(M).

printXtoY(X,Y):- X =< Y, list(X),nl, X1 is X+1, printXtoY(X1,Y).
printXtoY(X,Y):- X > Y, nl.
