PREDICATES

nondeterm  putra(symbol,symbol)
nondeterm  saudara_perempuan(symbol,symbol)
nondeterm  saudara_laki(symbol,symbol)
nondeterm  menikah(symbol,symbol)
nondeterm  ayah(symbol,symbol)
nondeterm  kakek(symbol,symbol)
nondeterm ipar_perempuan(symbol,symbol)


CLAUSES
/*fakta*/
  putra("Ikhsan","Bentang").
  saudara_perempuan("Dini","Dina").
  saudara_laki("Adi","Lintang").
  menikah("Ikhsan","Dini").
  menikah("Lintang","Surga").

/*aturan
dimana : 
-A,B adalah anak maka B,A adalah putra ayah.
-A,B adalah kakek jika/maka A,C adalah ayah, dan C,B adalah anak kakek juga
- A,B adalah ipar_perempuan jika menikah denngan saudara_perempuan
- A,B adalah ipar_perempuan jika saudara_laki (A,C) menikah*/

  ayah(A,B):-putra(B,A).
  kakek(A,B):-ayah(A,C), ayah(C,B).
  ipar_perempuan(A,B):-menikah(A,C), saudara_perempuan(C,B).
  ipar_perempuan(A,B):-saudara_laki(A,C), menikah(C,B).
  
  GOAL
  
  ipar_perempuan("Ikhsan",X).
  /*bentuk goal pernyataan
  dimana : ipar_perempuan ikhsan = siapa?*/