setwd("~/Documents/Maestria/3 Cuatrimestre/Analitica Web/Unidad 1/novel-corona-virus-2019-dataset/")

COVID19  <- read.table("time_series_covid_19_confirmed_totals.csv", header = TRUE, sep = ",")

summary(COVID19)

# Se grafican los datos de casos confirmados
plot(COVID19$CONFIRMED, type = "l", lwd=1, xaxt="n", col="black")

# Casos de pacientes recuperados
lines(COVID19$RECOVERED, col = "blue" , type = "l", lwd = 1)

# Casos de pacientes fallecidos
lines(COVID19$DEATH, col = "red", type = "l", lwd = 1)

# Muestra de los ejes
axis(
  side = 1, 
  at = 1:length(row.names(COVID19)), 
  labels = FALSE,
  las = 2
  )

# Texto de los ejes
text(
  x = 1:length(row.names(COVID19)), 
  y = par("usr")[3] - 6000, 
  labels = COVID19$DATES, 
  srt = 45, 
  pos = 1, 
  adj = 1, 
  xpd = NA,
  cex = 0.5
  )