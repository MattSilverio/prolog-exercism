estudante(ana, 3, 'Engenharia de Software').
estudante(beto, 1, 'Engenharias').
estudante(carlos, 4, 'Engenharia de Energia').
estudante(diane, 2, 'Engenharias').
estudante(euler, 1, 'Engenharias').
estudante(fabio, 5, 'Engenharia de Software').
estudante(gustavo, 8, 'Engenharia de Software').
estudante(heitor, 7, 'Engenharia de Energia').
estudante(ian, 3, 'Engenharias').

 matricula('Calculo 1', ana).
 matricula('Calculo 1', fabio).
 matricula('Calculo 1', diane).
 matricula('Calculo 1', euler).
 matricula('Calculo 1', gustavo).
 matricula('Calculo 1', ian).

 matricula('IAL', beto).
 matricula('IAL', diane).
 matricula('IAL', euler).

 matricula('APC', carlos).
 matricula('APC', fabio).
 matricula('APC', gustavo).
 matricula('APC', ian).

tem_calouros(X) :-
  distinct(X, (estudante(Y, 1, _), matricula(X,Y))).

software :-
  estudante(X, _,  'Engenharia de Software'),
  write(X),
  nl,
  fail.

turma_mista(D):-
  distinct(D, (matricula(D, E1),
  matricula(D, E2),
  matricula(D, E3),
  estudante(E1, _ , 'Engenharia de Software'),
  estudante(E2, _, 'Engenharias'),
  estudante(E3, _ , 'Engenharia de Energia'))).



