PREDICATES

faktorial(unsigned,real)
faktorial(unsigned,real,unsigned,real)

CLAUSES
%aturan
faktorial(N,FaktoN):-        % aturan awal yang dimana mengatur nilai dari I dan P yang adalah 1
faktorial(N,FaktoN,1,1).     

faktorial(N,FaktoN,N,FaktoN):-!.  % aturan dari N adalah I, dan faktoN adalah P 
faktorial(N,FaktoN,I,P):-
IBaru = I+1,  			%nilai Ibaru awal adalah 1+1 yang di tahap kedua akan naik pada langkah kedua dengan nilai IBaru 2+1
				%nilai pbaru awal adalah 1 dan akan dikalikan dengan hasil jumlah ibaru menjadi 1*2=2
				%pada tahap kedua maka nilai Pbaru akan dikalikan dengan nilai hasil jumlah Ibaru yang kedua menjadi 2*3 

PBaru = P*IBaru,

faktorial(N, FaktoN, IBaru, PBaru).		% nilai awal akan diambiil dari tahap 1 yang dimana (N,faktoN, 2) adlah nilai dari IBaru yang pertama dan akan berlanjut seterusnya.

GOAL
faktorial(3,X).  % nilai 3 ditetapkan untuk mengisi nilai dari variable N sehingga tahap dua dapat diproses dan akan mendapatkan hasil X yang dicari adalah = 6