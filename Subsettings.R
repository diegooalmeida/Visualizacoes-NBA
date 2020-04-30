
Games

# Acesso a "pedaços" da matriz, 
# filtrando por linhas e colunas
Games[1:3, 6:10]

# Filtrando por colunas
Games[,c("2008", "2009")]

# Filtrando por linhas
Games[c("KobeBryant", "DerrickRose", "ChrisBosh"),]

# Acesso a apenas uma linha (é transformado em um vetor)
Games[1,]
is.matrix(Games[1,])
is.vector(Games[1,])

# Acesso a apenas uma coluna (é transformada em um vetor)
Games[,1]

is.matrix(Games[,1])
is.vector(Games[,1])

# Acesso a apenas uma coluna mantendo a propriedade de matriz
Games[1,, drop=FALSE]

is.matrix(Games[1,, drop=FALSE])
is.vector(Games[1,, drop=FALSE])

# Plotagem dos subsets
Data <- MinutesPlayed[1:3,]
matplot(t(Data), type = "b", pch = 15:18, col=c(1:4, 6))
legend("bottomleft", inset = 0.01, legend = Players[1:3], pch = 15:18, col = c(1:4,6), horiz = F)

Data <- MinutesPlayed[1,, drop = F]
matplot(t(Data), type = "b", pch = 15:18, col=c(1:4, 6))
legend("bottomleft", inset = 0.01, legend = Players[1], pch = 15:18, col = c(1:4,6), horiz = F)

# Abstraindo a plotagem pra uma função
plotting <- function(data, rows=1:10){
  Data <- data[rows,, drop = F]
  print(Data)
  matplot(t(Data), type = "b", pch = 15:18, col=c(1:4, 6))
  legend("bottomleft", inset = 0.01, legend = Players[rows], pch = 15:18, col = c(1:4,6), horiz = F)
  
}

plotting(Points, 8)

        