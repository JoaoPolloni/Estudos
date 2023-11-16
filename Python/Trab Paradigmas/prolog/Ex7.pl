# a) adiciona(X, L1, L2) - adiciona o elemento X à lista L1, resultando na lista L2.
adiciona(X, L, [X|L]).

# b) remover(X, L1, L2) - remove o elemento X da lista L1, resultando na lista L2.
remover(_, [], []).
remover(X, [X|T], L) :- remover(X, T, L).
remover(X, [H|T], [H|L]) :- X \= H, remover(X, T, L).

# c) inverte(L1, L2) - inverte a lista L1, resultando na lista L2.
inverte([], []).
inverte([H|T], L) :- inverte(T, L1), append(L1, [H], L).

# d) tamanho(L1, X) - retorna o tamanho da lista L1.
tamanho([], 0).
tamanho([_|T], X) :- tamanho(T, Y), X is Y + 1.

# e) soma(L1, X) - retorna a soma de todos os elementos da lista L1.
soma([], 0).
soma([H|T], X) :- soma(T, Y), X is Y + H.