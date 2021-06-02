## MUESTREO ALEATORIO SIMPLE

# Mass es una tienda que aperturó, en estos últimos años,
# diversos locales en el distrito de San Jerónimo. El
# gerente desea realizar un análisis de ventas para el
# mes de febrero, por ello se recopila información de
# los clientes. Las variables analizadas fueron:

#  Monto: Monto de compra (en soles) del cliente
#  Ingreso: Ingreso mensual del cliente (en miles de soles)
#  Número: número de productos comprados

# Se decidió sacar una muestra de 40 registros. Se conoce
# que el ingreso promedio mensual de un cliente del esta-
# blecimiento es de S/. 2100 y que en una compra se
# adquieren en promedio 4.4 productos.

# Los datos se muestran en el archivo data que se encuentra
# ubicada en el mismo directorio

dir()

# -- Pregunta 1 --

#   Seleccione los elementos que conforman la muestra y 
#   muestre los primeros 2 números seleccionados.

library(readxl)
datos <- read_xlsx("data01.xlsx")
colnames(datos) # variables
dim(datos)      # dimensión del dataframe

# Fase de selección de la muestra

n <- 40            # tamaño de muestra
N <- dim(datos)[1] # tamaño de población
f <- n/N           # fracción de muestreo

indices <- sort(sample(N, n, replace = F))
head(indices,2)    # índices para obtener la muestra

muestra <- datos[indices, ]
dim(muestra)

# -- Pregunta 2 --

#   ¿Cuál de las 2 variables usaría para mejorar las
#   estimaciones del monto de compra?