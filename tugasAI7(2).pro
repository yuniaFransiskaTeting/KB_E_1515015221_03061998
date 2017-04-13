DOMAINS
nama = symbol
matkul = symbol
nilai = symbol

PREDICATES
nondeterm matakuliah(nama, matkul, nilai)
nondeterm tidaklulus(nama,matkul, nilai)

CLAUSES
matakuliah("supardi","intelejensi buatan",a).
matakuliah("suradi","intelejensi buatan",b).
matakuliah("suyatmi","intelejensi buatan",c).
matakuliah("suparni","intelejensi buatan",d).
matakuliah("sujiman","intelejensi buatan",c).

matakuliah("supardi","PDE",b).
matakuliah("Suradi","PDE",c).
matakuliah("suyatmi","PDE",c).
matakuliah("suparni","PDE",b).
matakuliah("sujiman","PDE",d).


matakuliah("supardi","sistem Operasi",b).
matakuliah("Suradi","sistem Operasi",a).
matakuliah("suyatmi","sistem Operasi",a).
matakuliah("suparni","sistem Operasi",b).
matakuliah("sujiman","sistem Operasi",c).

tidaklulus(Nama, Matkul, nilai):-
		matakuliah(Nama, Matkul, d).
		
GOAL
write("Nilai dari Supardi"),nl,
matakuliah(supardi, Matakuliahyangdiambil, Nilai);
nl,
write("nilai mahasiswa yang tidak lulus"),nl,
tidaklulus(Nama, Matkul, _);
nl,
write("perkuliahan suripah pada semester ini"),nl,
matakuliah(suripah,_,_).