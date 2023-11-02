print("Wariant 1")

print("task a")
a <- 2 * exp(5)
b <- 2 * a
a
b
which.max(c(a, b))

print("task b")
?sum

print("task c")
a <- seq(15, 25)
a
a_sum <- sum(a)
a_sum

print("task d")
matching_functions <- apropos("sum", mode = "function")
matching_functions

print("task e")
setwd("/Users/tsteblik/APU/zadanie_1")
s <- "smartfony Samsung"
s
saveRDS(s, file = "s.rds")
rm(s)
s
s <- readRDS("s.rds")
s

print("task f")
#install.packages("gridExtra")
library(gridExtra)
?grid.table()
data(mtcars)
t <- grid.table(mtcars[1:10, ])
grid.draw(t)

print("task g")
g <- seq(100, 20, -4)
g

print("task h")
a <- seq(9, 5)
a
b <- seq(11, 16)
b
d <- c(a, b)
d

print("task i")
nazwa <- c("SAMSUNG GALAXY A2 CORE", "SAMSUNG GALAXY A6",
           "SAMSUNG GALAXY A7 2018", "SAMSUNG GALAXY A8S",
           "SAMSUNG GALAXY A9", "SAMSUNG GALAXY M10",
           "SAMSUNG GALAXY WIDE 3", "SAMSUNG GALAXY M20",
           "SAMSUNG GALAXY NOTE 9", "SAMSUNG GALAXY ON6")
wyswietlacz <- c(4.98, 5.6, 6.00, 6.39, 6.30, 6.22, 5.50, 6.30, 6.40, 5.60)
pamiec_RAM <- c(1, 4, 4, 6, 6, 2, 2, 3, 6, 3)
pamiec_wbudowana <- c(8, 32, 64, 128, 128, 16, 32, 32, 128, 32)
aparat_foto <- c(5, 16, 24, 24, 24, 13, 13, 13, 12, 13)
cena <- c(2699, 1999, 1899, 545, 1899, 2699, 929, 1799, 4999, 2148)
liczba_opini <- c(1, 39, 80, 0, 24, 0, 0, 3, 36, 0)
smartfony <- data.frame(nazwa, wyswietlacz, pamiec_RAM, pamiec_wbudowana,
                        aparat_foto, cena, liczba_opini)
mean(smartfony$cena)

print("task j")
do_dodania <- c("SAMSUNG GALAXY S9+", 6.20, 6, 64, 12, 1706, 60)
smartfony <- rbind(smartfony, do_dodania)
smartfony$cena <- as.numeric(smartfony$cena)
mean(smartfony$cena)

print("task k")
smartfony$ocena <- as.factor(c(2.5, 3, 4, 3.5, 3.5, 3, 2.5, 3.5, 4, 2.5, 3.5))
class(smartfony$ocena)
tapply(smartfony$cena, smartfony$ocena, mean)

print("task l")
smartfony <- rbind(smartfony, c("SAMSUNG GALAXY J6", 5.60, 3, 32, 13, 2148, 32, 3.0))
smartfony <- rbind(smartfony, c("SAMSUNG GALAXY S LIGHT LUXURY", 5.80, 4, 64, 16, 2120, 0, 3.0))
smartfony <- rbind(smartfony, c("SAMSUNG GALAXY J7 REFINE", 5.50, 2, 32, 13, 1300, 0, 2.5))
smartfony <- rbind(smartfony, c("SAMSUNG GALAXY J8", 6.00, 4, 64, 16, 2148, 0, 3.0))
licznosc_ocen <- table(smartfony$ocena)
barplot(licznosc_ocen, main = "Liczność reprezentantów ocen klientów", xlab = "Ocena", ylab = "Liczność")

print("task m")
procentowy_udzial <- prop.table(table(smartfony$ocena)) * 100
pie(procentowy_udzial)
#install.packages("plotrix")
library(plotrix)
fan.plot(procentowy_udzial, labels = names(procentowy_udzial))

print("task n")
smartfony$liczba_opini <- as.numeric(smartfony$liczba_opini)
smartfony$status_opinii <- cut(smartfony$liczba_opini, breaks = c(-1, 1, 49, 100, Inf), labels = c("nie ma", "mniej 50 opinii", "50-100 opinii", "więcej 100 opinii"))
smartfony$status_opinii <- as.factor(smartfony$status_opinii)
procentowy_udzial <- prop.table(table(smartfony$status_opinii)) * 100
pie(procentowy_udzial)

print("task o")
paste(smartfony$nazwa, " ma ocenę klientów ", smartfony$ocena, " bo ma liczbę opinii ", smartfony$liczba_opini)

print("task p")
write.csv(smartfony, file = "smartfony.csv")
rm(smartfony)
smartfony
smartfony <- read.csv("smartfony.csv")
smartfony
