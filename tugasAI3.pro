domains
harga = integer
barang = STRING
berat = symbol

predicates

nilai(harga,harga,harga) - procedure (i,i,o)
kategori (barang,barang) - nondeterm (i,o)
banyak_barang (symbol) - nondeterm (o)
angka(char) - nondeterm (i)
run - nondeterm()

clauses
nilai(A,B,Harga):-
Harga=A*B.

angka(YU):-
'1'<=YU,
 YU<='9'.
angka(YU):-
'1'<=YU,
 YU<='8'.

kategori (makanan, enak).
kategori (minuman, jus).
 
kategori ("Makanan", "enak").
kategori ("Minum","Sekali").

banyak_barang("100").
banyak_barang("50").
banyak_barang("20").

	run:- 
		write("-----yunia fransiska----\n").
      			
 goal
 nilai (28000,597000, Harga),
 kategori("Makanan", X),
 run; 
 banyak_barang(C),
 angka(5).
 