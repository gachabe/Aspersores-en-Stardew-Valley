grid(1..13,1..11).
1{cubierto(X,PosY) :grid(X,Y),PosX-X =0..2} :- sprinkler(PosX,PosY).
1{cubierto(PosX,Y) :grid(X,Y), PosY - Y = 0..2} :- sprinkler(PosX,PosY).
1{cubierto(X,PosY) :grid(X,Y),X-PosX =0..2} :- sprinkler(PosX,PosY).
1{cubierto(PosX,Y) :grid(X,Y), Y- PosY = 0..2} :- sprinkler(PosX,PosY).
:- grid(X,Y), not cubierto(X,Y).
{sprinkler(X,Y): X =1..11,Y =1..11}.
#minimize {1,X,Y:sprinkler(X,Y)}.
#show sprinkler/2.
