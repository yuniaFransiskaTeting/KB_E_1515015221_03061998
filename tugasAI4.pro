DOMAINS
wanita = symbol
nama = symbol
nilai = real

PREDICATES
nondeterm manusia(wanita,wanita)
pasangan
nondeterm orang(nama)
nondeterm mahasiswa(nama, nilai)
bermasalah(nama)


CLAUSES
orang(Nama):-
mahasiswa(Nama,NILAI),
NILAI>=70,

not(bermasalah(nama)).
mahasiswa("Yunia Fransiska", 80).
mahasiswa("Sri intan Fandini", 85).
mahasiswa("nurnaini", 70).
bermasalah("sefia").
bermasalah("keliana").


manusia(sisil, udi).
manusia(mimi, sopo).
manusia(liki, rany).

pasangan :-
manusia(X,Y),
write(X, " adalah pasangan ", Y, "\n|\n"),
fail.
pasangan.


goal
orang(Nama),
pasangan.