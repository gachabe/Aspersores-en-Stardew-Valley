grid(1..13,1..11).
% Un aspersor puede cubrir hacia arriba, abajo, izquierda y derecha (hasta 3 casillas)
cubierto(X,Y) :- sprinkler(X,Y).  % la casilla del aspersor siempre se cubre

% Hacia la derecha
cubierto(X2,Y) :- sprinkler(X1,Y), X2 = X1 + D, D=1..3, grid(X2,Y).

% Hacia la izquierda
cubierto(X2,Y) :- sprinkler(X1,Y), X2 = X1 - D, D=1..3, grid(X2,Y).

% Hacia abajo
cubierto(X,Y2) :- sprinkler(X,Y1), Y2 = Y1 + D, D=1..3, grid(X,Y2).

% Hacia arriba
cubierto(X,Y2) :- sprinkler(X,Y1), Y2 = Y1 - D, D=1..3, grid(X,Y2).
:- grid(X,Y), not cubierto(X,Y).
{sprinkler(X,Y): X =1..11,Y =1..11}.
#minimize {1,X,Y:sprinkler(X,Y)}.
#show sprinkler/2.
