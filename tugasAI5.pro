DOMAINS
orang = orang(nama,alamat)
nama = nama(pertama,kedua)
alamat = alamat(jalan,kota_kab,propinsi)
jalan = jalan(nama_jalan,nomor)
kota_kab,propinsi,nama_jalan = string
pertama,kedua = symbol
nomor = integer




GOAL

P1=orang(nama(diena,fatihah), alamat(jalan("wijaya kusuma", 12), "berbah", "DIY"));
P2=orang(nama(nur,fatihah), alamat(jalan("pasukan jaya", 15), "sleate", "jakarta")).



%P1 = orang(nama(diena,fatihah),alamat(jalan("Wijaya Kusuma", 12), "Berbah", "DIY")),
%P1 = orang(nama(_,fatihah),Alamat),
%P2 = orang(nama(nur,fatihah),Alamat),
%write("P1=",P1),nl,
%write("P2=",P2),nl.