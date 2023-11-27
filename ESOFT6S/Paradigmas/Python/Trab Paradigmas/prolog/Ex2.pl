bonita(cassia).
rico(marcos).
bonito(marcos).
rica(ana).
forte(ana).
forte(fabiano).
bonito(fabiano).
amavel(silvio).
forte(silvio).

gosta(homem, mulher_bonita) :- bonita(mulher_bonita), homem.
feliz(homem) :- gosta(homem, mulher_bonita), homem, rico(homem).

feliz(mulher) :- gosta(mulher, homem_que_gosta_dela), gosta(homem_que_gosta_dela, mulher), mulher.
gosta(ana, homem_que_gosta_dela) :- gosta(homem_que_gosta_dela, ana), homem_que_gosta_dela.
gosta(cassia, homem_que_gosta_dela) :- gosta(homem_que_gosta_dela, cassia), (rico(homem_que_gosta_dela); amavel(homem_que_gosta_dela); bonito(homem_que_gosta_dela)), forte(homem_que_gosta_dela).
