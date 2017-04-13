/* Contoh 4
------------*/
DOMAINS
integerlist = integer*   %menyatakan suatu list yang bertipe kan integer

PREDICATES
tambah(integerlist,integerlist,integerlist) %suatu predikat yang memiliki variable tambah yang berisi list integer
 
CLAUSES
	tambah([],List,List). %list tambah memiliki head dan di ikuti tail yang berisi list
	
	% yang dimana aturan nya yaitu jika tambah memiliki head dan tail dan digabungkan dengan
	%list yang memiliki head dan tail, maka tambah akan bernilai atau memiliki isi list yang digabungkan dari
	% nilai tambah dan list selanjutnya
tambah([H|L1],List2,[H|L3]):-
tambah(L1,List2,L3).

GOAL
%sehingga goal yang dimiliki nanti akan bernilai tambah([1,2,3,5,6]) yang dimana nilai tersebut adalah
%penambahan dari nilai list tail yang mengikuti.
tambah([1,2,3],[5,6],L).