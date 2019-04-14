go:- write('hello world Prolong').

% REGLAS

% esta regla especifica un pais
es_un_pais(argentina).
es_un_pais(paraguay).
es_un_pais(uruguay).
es_un_pais(brasil).
es_un_pais(paraguay).
es_un_pais(chile).


% Relacionamos los objetos (no bidireccinal)
limita_con(brasil, argentina).
limita_con(brasil, paraguay).
limita_con(brasil, uruguay).
limita_con(brasil, paraguay).
limita_con(argentina, chile).

% Readecuamos para que el grafo vaya en ambos sentidos
% (Dinyucion)
limitrofes(X,Y):- limita_con(X,Y); % OR
                  limita_con(Y,X).

% superficie por pais
superficie_pais(brasil, 8547404).
superficie_pais(uruguay, 176000).

% AND (Conjunsion )
pais_pequeño(X):- superficie_pais(X,Y),
                  Y < 1000000.

provincias(argentina,[entre_rios, misiones, corrientes,...]).

