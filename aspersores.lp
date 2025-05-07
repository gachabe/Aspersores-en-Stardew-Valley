grid(1..13,1..11).
cubierto(X,Y) :- sprinkler(X,Y).  % la casilla del aspersor siempre se cubre
cubierto(X1,Y1) :- sprinkler(X,Y),grid(X1,Y1), |X-X1|<=2,|Y-Y1|<=2.
:- grid(X,Y), not cubierto(X,Y).
{sprinkler(X,Y): X =1..13,Y =1..11}.
#minimize {1,X,Y:sprinkler(X,Y)}.
#show cubierto/2.
