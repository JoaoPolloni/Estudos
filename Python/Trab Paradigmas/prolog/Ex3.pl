% Regra para encontrar os alunos do professor X
aluno_de_professor(Aluno, Professor) :-
    aluno(Aluno, Disciplina),
    professor(Professor, Disciplina).

% Regra para encontrar pessoas associadas a uma universidade X (alunos e professores)
associado_universidade(Pessoa, Universidade) :-
    (aluno(Pessoa, _); professor(Pessoa, _)),
    frequenta(Pessoa, Universidade).

?- aluno_de_professor(Aluno, carlos).
?- associado_universidade(Pessoa, puc).
