#const anchura= 13.
#const altura = 11.
grid(1..anchura,1..altura).
cubierto(X,Y) :- sprinkler(X,Y).  % la casilla del aspersor siempre se cubre
cubierto(X1,Y1) :- sprinkler(X,Y),grid(X1,Y1), |X-X1|<=2,|Y-Y1|<=2.
:- grid(X,Y), not cubierto(X,Y).
{sprinkler(X,Y): X =1..anchura,Y =1..altura}.
#minimize {1,X,Y:sprinkler(X,Y)}.
#show sprinkler/2.
