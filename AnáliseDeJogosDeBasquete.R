
# Algumas análises

plotting <- function(data, rows=1:10){
  Data <- data[rows,, drop = F]
  print(Data)
  matplot(t(Data), type = "b", pch = 15:18, col=c(1:4, 6))
  legend("bottomleft", inset = 0.01, legend = Players[rows], pch = 15:18, col = c(1:4,6), horiz = F)
  
}

# Salário
plotting(Salary)
# Salário por jogo
plotting(Salary / Games)
# Salário por cestas
plotting(Salary / FieldGoals)


# Métricas de jogo
plotting(MinutesPlayed)
plotting(Points)

# Métricas de jogo normalizadas
# Cestas por jogos
plotting(FieldGoals / Games)
# Cestas por tentativas
plotting(FieldGoals / FieldGoalAttempts)
# Tentativas por jogos
plotting(FieldGoalAttempts / Games)
# Pontos por jogos
plotting(Points / Games)

# Observações interessantes
# Minutos jogados por jogo
plotting(MinutesPlayed / Games)
# Quantidade de jogos por ano
plotting(Games)
# Cestas por minuto jogado
plotting(FieldGoals/MinutesPlayed)

# Estilo de jogo
plotting(Points / FieldGoals)

