ponto(A, B) = ponto(1, 2)

# Bem-sucedida.
# Resultado: A = 1 e B = 2.

2 + 2 = 4

# Bem-sucedida.
# Não há variáveis para serem instanciadas, a unificação já é verdadeira.
ponto(A, B) = ponto(X, Y, Z)

#Falha.
#Isso falha porque o número de argumentos dos termos não é o mesmo. Não é possível unificar um ponto com duas dimensões (ponto(A, B)) com um ponto com três dimensões (ponto(X, Y, Z)).
mais(2, 2) = 4

# Falha.
# Isso falha porque não é possível unificar um termo mais(2, 2) com o número 4.
+(2, D) = +(E, 2)

# Bem-sucedida.
# Resultado: D = E.
t(p(-1,0), P2, P3) = t(P1, p(1, 0), p(0, Y))

# Bem-sucedida.
# Resultado: P1 = p(-1,0), P2 = p(1, 0) e P3 = p(0, Y).