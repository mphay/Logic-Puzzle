a(alan).
a(andrea).
a(austria).
b(bill).
b(beth).
b(bermuda).
c(charles).
c(carol).
c(china).

male(alan).
male(bill).
male(charles).

female(andrea).
female(beth).
female(carol).

country(austria).
country(bermuda).
country(china).

notmarried(carol, bill).
notmarried(bill, carol).
notmarried(X, Y):- a(X), a(Y), b(X), b(Y), c(X), c(Y).
notmarried(X, Y):- female(X), female(Y).
notmarried(X, Y):- male(X), male(Y).

correctorder(X, Y, Z):- a(X), b(Y), c(Z).

combo(X, Y, Z):- correctorder(X, Y, Z), country(X), not(country(Y)), not(country(Z)), not(notmarried(Y, Z)).
combo(X, Y, Z):- correctorder(X, Y, Z), country(Y), not(country(X)), not(country(Z)), not(notmarried(X, Z)), male(X).
combo(X, Y, Z):- correctorder(X, Y, Z), country(Z), not(country(X)), not(country(Y)), not(notmarried(X, Y)), male(Y).