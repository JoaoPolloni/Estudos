%Fatos
gerou(kelly, maria).
gerou(cleber, maria).
gerou(cleber, bruna).
gerou(maria, julia).
gerou(maria, pedro).
gerou(maria, luana).
gerou(pedro, lucas).

feminino(kelly).
feminino(maria).
feminino(bruna).
feminino(luana).
feminino(julia).

masculino(cleber).
masculino(pedro).
masculino(lucas).


%relacionamentos

%quem a kelly gerou, lembrar de usar ; para ir pro proximo dado
gerou(kelly, X).

%saber quem em comum gerou os dois irmaos
gerou(X, julia), gerou(X, pedro).

%saber quem sao os avos de pedro
gerou(X, Y), gerou(Y, pedro).

%quem sao os netos de cleber
gerou(cleber, Y), gerou(Y, X).

%quem gerou quem
gerou(X, Y), gerou(Y, Z).


%buscando a avo da julia
gerou(X, Y), gerou(Y, julia), feminino(X).

%saber as irmas do pedro
gerou(X, Y), gerou(X, pedro), feminino(Y).

%quem e o pai da maria
gerou(X, maria), masculino(X).

%:- e o i f

%O Y é filho de X se o X gerou o Y
filho(Y, X) :-
	gerou(X, Y).

%exemplo no compiler = filho(pedro, X)

mae(X,Y):-
	gerou(X,Y),
	feminino(X).