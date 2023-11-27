passaro(joao).
peixe(pedro).
minhoca(maria).

gosta(passaro, minhoca).
gosta(gato, peixe).
gosta(gato, passaro).
gosta(X, Y) :- amigo(X, Y), amigo(Y, X).

amigo(meu_gato, eu).
come(meu_gato, X) :- gosta(meu_gato, X), X \= pessoa.

nome_gato(meu_gato, 'Chuck Norris').