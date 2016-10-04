#Regresión lineal múltiple parte 1 (R): análisis exploratorio
#El tamaño del cerebro y tamaño del cuerpo de una persona influyen en su inteligencia?
#Investigación hecha por Willerman en 1991 donde colecciona la siguiente información:
iq <- read.table("iqsize.txt",header = TRUE)

# Donde la variable dependiente es :
#     - PIQ (Performance IQ scores) de la escala Wechsler Adult Intelligence
#       Esta variable sirvió como medida de inteligencia individual para el
#       investigador.
# Las variables dependientes son :
#     - Brain : Tamaño del cerebro basado en la cuenta obtenida de revisiones IRM
#               (Los estudios con imágenes por resonancia magnética (IRM) usan un 
#               gran imán y ondas de radio para observar órganos y estructuras que 
#               se encuentran al interior del cuerpo).
#     - Height : Altura (en pulgadas)
#     - Weight : Peso (en libras)

#Realizaremos un análisis exploratorio para conocer los datos con los que contamos

#Comenzaremos con un scatter plot matrix para identificar que variables 

attach(iq)
pairs(PIQ~Brain+Height+Weight,data=iq, main="Matriz de dispersion")
  
#Vemos que las mås relacionadas son el Peso y la altura
        