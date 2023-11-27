# FILMES
filme(amnesia, drama, nolan, 2000, 113).
filme(babel, suspense, inarntu, 2006, 142).
filme(capota, acao, miller, 2005, 136).
filme(casablanca, romance, curtiz, 1942, 130).
filme(matrix, ficcao, wachowski, 1999, 136).
filme(rebecca, suspense, hitchcock, 1940, 130).
filme(shrek, aventura, adamson, 2001, 90).
filme(sinais, suspense, shyamalan, 2002, 126).
filme(spartacus, drama, kubrick, 1960, 184).
filme(superman, acao, donner, 1978, 143).
filme(titanic, romance, cameron, 1997, 194).
filme(tubarao, suspense, spielberg, 1975, 124).

filmes_suspense(Filme) :- filme(Filme, 'suspense', _, _, _).
duracao_inferior_100min(Filme) :- filme(Filme, _, _, _, Duracao), Duracao < 100.
filmes_entre_anos(Filme, Ano) :- filme(Filme, _, _, Ano, _), Ano >= 2000, Ano =< 2005.

#a
dirigiu_filme(Diretor, 'titanic').

#b
?- filmes_suspense(Filme).

#c
?- filmes_por_diretor('donner', Filme).

#d
?- ano_lancamento('sinais', Ano).

#e
?- duracao_inferior_100min(Filme).

#f
?- filmes_entre_anos(Filme, Ano).