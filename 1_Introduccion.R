# Estádistica Actuarial 
# Facultad de Ciencias Económicas 
# Máximo Ripani



set.seed(7)
x = runif(100)
y = 2*x
plot(x,y)

# Vemos que la pendiente sigue siendo la misma, cambio la dispersion
y = 2*x + runif(100)
plot(x,y)

# Gráficos de caja
boxplot(x)
boxplot(y)

# Gráficos paralelos 
par(mfrow = c(1,2))

y = 2*x
plot(x,y)

boxplot(x)
boxplot(y)

# Comparamos dos gráficos
apply(cbind(x,y),2,plot)
apply(cbind(x,y),2,boxplot)


# Indexando vectores

x = 1:10
x[4] = 7

# Con booleanos
x = c('a','b','c','d','e','f')
x[c(T,F,T,T,F,F)]

# Pedimos lo opuesto con el operador diferente (!)
x[!c(T,F,T,T,F,F)]

x = seq(1,10,2)
# Hacemos comparaciones
x == 3
x >= 2
(x >= 2) & (x != 3)

# Otra forma 
which(x>=3)

# Reasignamos datos 
x[x==3] = NA

# Números negativos para omitir elementos de vector 
x = seq(1,15)

x[-2]
x[-(1:3)]
x[-(6:10)]

# Reordenaoms componentes de un vector 
x = c('Primero', 'Segundo', 'Tercero')

x[c(3,1,2)]


# Operaciones con vectores 
"
Cuando los vectores tienen las mismas componentes las operaciones se realizan 
componente por componente
"

x = c(1:10)
y = c(11:20) 

x * y
x ^ y


# Probamos con vectores de distintas longitudes 

x = c(1,2,3)
y = c(1:10)

x*y

# Ahora usamos multiplos 
x = c(1,2,3)
y = c(1:9)

x*y

# Atributos de un vector 
length(x)
length(y)

mode(x)

y = c('Hola', 'FCE', 'UBA')
mode(y)

y = c(1,'FCE',10,'Estadistica')
mode(y)

mode(TRUE)
mode(10)
mode('Hellloooo')


# Cambiamos la longitud de un vector 
x = 1:10
length(x) = 7
x

x = 1:10
length(x) = 13
x



# Modos de almacenamiento
x = c(1.130, pi, exp(2))
x

# Configuramos para que solo guarda enteros
storage.mode(x) = 'integer'
x

# Ahora para que guarde caracteres
storage.mode(x) = 'character'
x

# Creamos vectores vacios con n componentes y formato pre-establecido
n = 10
numeric(n)
logical(n)
character(n)
single(n)

# Le asignamos nombres a los componentes de un vector 

x = c(1,130,0.70)
storage.mode(x) = 'numeric'
names(x) = c('Dolar','Pesos','Euros')
x

# Ahora podmeos acceder al vector por el nombre de sus componentes
x['Euros']


# Otras opereaciones con vectores 
x = 1:50
#Invierte el orden del vector
rev(x[10:20]) 


x = c(1,4,3,10,110,2,43)
#Ordenamos los elementos del vector
sort(x)
#Nos devuelve ademas el indice de los componentes ordenados
sort(x,index.return=T)

#Orden descendente
sort(x,decreasing=TRUE)

# Vemos si hay elementos duplicados (TRUE si se repitio)
x = c(1,2,3,4,2,4,5,1)
duplicated(x)

# Vemos los elementos que tiene el vector sin duplicados
x = c(1,1,1,11)
unique(x)


# Atención 
'
Los vectores solo aceptan componentes de un modo. 
Si se le dan distintos modos, R fuerza la unicidad.
'

x = c(1,T,'Hola')
# Vemos que quedaron todos como strings
x