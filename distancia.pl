distance(S_metros, T_segundos, I_metros, V_ms, A_ms2) :-
  S_metros is I_metros + V_ms * T_segundos + (A_ms2 * T_segundos ** 2)/2. 
  

%% DICA FORMULA SORVETAO S = s0 + v*t + (a*t^2)/2