male(abraham).
male(clancy).
male(herb).
male(homer).
male(bart).

female(mona).
female(jackie).
female(marge).
female(patty).
female(selma).
female(lisa).
female(maggie).
female(ling).

father(abraham,herb).
father(abraham, homer).

father(homer, bart).
father(homer, lisa).
father(homer, maggie).

father(clancy, marge).
father(clancy, patty).
father(clancy, selma).

mother(mona, homer).

mother(marge, bart).
mother(marge, lisa).
mother(marge, maggie).

mother(jackie, marge).
mother(jackie, patty).
mother(jackie, selma).

mother(selma, ling).


pais(Pais, Filho) :- father(Pais, Filho) ; mother(Pais, Filho).


uncle(Tio, Sobrinho) :- 
  distinct(Tio, (male(Tio),
  pais(Pais, Sobrinho),
  pais(Avo, Pais),
  pais(Avo, Tio),
  Tio \= Pais)).

grandmother(Avo, Neto) :-
  pais(Pais, Neto),
  pais(Avo, Pais),
  female(Avo).

