# t transforma a matriz na sua transposta.
# Uma vez que a plotagem com matplot pega os dados das colunas, e, como
# o FieldGoals está com os anos nas colunas e os dados de pontos nas linhas, quando
# a plotagem pegasse uma coluna inteira, estaria pegando dados de todos os jogadores 
# em um mesmo ano, e atribuindo a um jogador. Ao usar a transposta, teremos anos nas 
# linhas e pontos nas colunas, dessa forma, cada coluna representa todos os pontos de 
# um jogador ao longo dos anos.
# na plotagem, x será os anos, y será os pontos.

t(FieldGoals)
FieldGoals

matplot(t(FieldGoals), type = "b", pch = 10:20, col=c(1:4, 6))
legend("bottomleft", inset = 0.01, legend = Players, pch = 10:20, col = c(1:4,6), horiz = F)


# type define o tipo de plotagem. p é pontos, l é linhas, b é linhas e pontos.
# pch define os icones de cada dado na plotagem.
# col define coloração.
# legend é a função pra fazer a legenda
# bottomleft define a posicao na tela, inset define a distancia do eixo, legend é onde
# se define o vetor a preencher a legenda, pch e col é o mesmo da plotagem, devem ser 
# iguais aos valores da plotagem pra facilitar a localização