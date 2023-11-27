aprovado_aluno(Aluno) :-
    nota(Aluno, Nota),
    Nota >= 7.0,
    Nota =< 10.0,
    write(Aluno), write(' está Aprovado.').

recuperacao_aluno(Aluno) :-
    nota(Aluno, Nota),
    Nota >= 5.0,
    Nota =< 6.9,
    write(Aluno), write(' está em Recuperação.').

reprovado_aluno(Aluno) :-
    nota(Aluno, Nota),
    Nota >= 0.0,
    Nota =< 4.9,
    write(Aluno), write(' está Reprovado.').

?- aprovado_aluno(joao).
?- recuperacao_aluno(joao).
?- reprovado_aluno(joao).
