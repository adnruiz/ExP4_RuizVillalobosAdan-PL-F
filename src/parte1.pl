%sum_range(A,B,Result): true if the sum of all integers in the range [A,B] is Result
%base case
%sum range(A,B,Result): A==B, Result =A.
sum_range(A,A,A).

%recursive case
sum_range(A,B,Result):-
	A1 is A+1,
	sum_range(A1,B,Result1),
	Result is A + Result1.
	
%fib(0)=0
%fib(1)=1
%fib(n)=fib(n-1)+fib(n-2)

%base cases
fib(0,0).
fib(1,1).
%recursive cases
fib(N,R):-
	N>1,
	N1 is N-1,N2 is N-2,
	fib(N1,R1),fib(N2,R2),
	R is R1 + R2.