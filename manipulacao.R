Directory= "C:\\ESTATISTICA\\bases\\"



base <- read.fwf(paste(Directory,  "ex_aula2_fwf.txt", sep=""),
                       widths = c(5,8,2,4),
                       skip = 1)

base <- read.csv(paste(Directory,  "ex_aula2_t.csv", sep=""),
                 sep = ";",
                 header = TRUE)

write.csv2(base,paste(Directory,  "meu_arquivo_salvo.csv", sep=""))

install.packages("readxl")
library(readxl)

arquivos <- list.files(path = Directory, pattern = ".*txt")


### manipulação

base <- read.csv(paste(Directory,  "ex_aula2_t.csv", sep=""),
                 sep = ";",
                 header = TRUE)

names(base) <- c("Sigla", "Codigo","Municipio","Renda")