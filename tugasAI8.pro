domains
  orang = hasil(nama, sip, hobi)   %pendeklarasian suatu variable yang dimana variable orang sebagai suatu aritas jamak.
  sip = integer %variable sip yang menggunakan tipe data integer
  nama, hobi = string %dan variable nama serta hobi menggunakan tipe data string 

predicates
  run - procedure () %untuk procedure untuk memakai dan menjalankan program

clauses


       run:-      %yang dimana jika runing 
      write("\n\nmasukan nama :"), readln(Nama),  %maka akan membaca perintah untuk memasukan nama 
      write("umur : "), readint(Sip),           %lalu lanjut pada perintah memasukan umur dengan tipe data integer saja
      write("masukan hobi : "), readln(Hobi),  % dan memasukan hobi 
      Hasil = hasil(Nama, Sip, Hobi),   %yang dimana nanti akan menampilkan hasil yang susunannya akan menampilkan nama, umur, dan hobi secara berurutan dengan data yang dimasukan
      write(Hasil),nl,     %dan ketika perintah selesai maka akan menampilkan data yang sudah di input 
      write("apakah ingin mengulang ? (y/n)"),  %setelah selesai menampilkan data maka akan muncul perintah apakah kita ingin mengulang atau selesai pada data satu saja
      readchar(Ch),nl,Ch='n', !. %dan redchar ini di adalah suatu perintah untuk melakukan perulangan yang diakhiri dengan perintah cut.

  run :-
	 nl,nl, 							%====================================================%
	 write("==================="),					% perintah yang akan muncul jika kita akan mengulang %
	 write("masukan data lagi : "),					%						     %
	 write("==================="),					%====================================================%
	 nl,nl,run.


goal
write("||======================||"),               %=================================================================%
write("\nyunia Fransiska Teting"),		   %             tampilan awal yang akan muncul pada program          %
write("\n1515015221"),				   %setelah perintah muncul maka proses runing program akan berjaalan %
write("\n||======================||"), run.        %==================================================================%
%save("data_yunia.txt"), cetak.
