conexion(d,h,4).
conexion(h,f,9).
conexion(i,f,11).
conexion(f,g,10).
conexion(f,a,8).
conexion(a.b,7).
conexion(d,i,2).
tieneArista(X):-conexion(X,_,_).
llegar(Inicio,Destino,Int,Costo):-
	conexion(Inicio,Int,C1), conexion(Int,Destino,C2),Costo is C1+C2.


connected(d,h).
connected(h,f).
connected(f,a).
connected(a,b).
connected(f,g).
connected(i,f).
path(X,Y):-connected(X,Y).
path(X,Y):-connected(X,Z), path(Z,Y).

suma(0,0).
suma(N,R):- A is N-1, suma(A,Ra), R is N + Ra.