# Practica 7 - LPP 17/18 - Nicolangelo Famiglietti

## Descripcion

Esta practica de laboratorio se ha de realizar utilizando el lenguaje de programacion `Ruby` y el paradigma de Programacion Orientada a Objetos.
Se ha de partir de la estructura de la gema generada con la herramienta `Bundler` y realizar el control de versiones con git siguiendo su filosofia de ramas.
Para el desarrollo de las clases se ha de seguir la metodologia de *Desarrollo dirigido por pruebas*
(Test Driven Development - TDD) y la herramienta `RSpec`.

## TODO

1. Crear una clase Ruby para representar y gestionar listas doblemente enlazadas (List) de manera que se puedan recorrer en ambos sentidos.
Los arrays de `Ruby` pueden funcionar como listas enlazadas, puesto que los metodos `push`, `unshift` e `insert` añaden un nuevo elemento a la lista y los metodos `pop` y `shift` eliminan un  elemento  de  la  lista.  Sin  embargo,  no  se  utilizara  esta  aproximacion.  Se  abordara  la implementacion  mediante  la  creacion  de  una  estructura  de  datos.  Utilizar  un  `Struct`  para  su definicion:
```
#  create  a  Struct  with  :value,  :next  and  :prev 
Node  =  Struct.new(:value,  :next,  :prev)
```
Ejemplos de descripcion de espectativas son las siguientes:

><li>Debe existir un Nodo de la lista con sus datos, su siguiente y su previo Debe existir una Lista con su cabeza y su cola</li>
><li>Se puede insertar un elemento en la Lista</li>
><li>Se pueden insertar varios elementos en la Lista Se extrae el primer elemento de la Lista</li>
><li>Se extrae el u´ltimo elemento de la Lista</li>

2. Considere las clases Ruby para representar alimentos de practicas anteriores. Siguiendo la “piramide alimenticia”, cree una jerarquia de clases que permita clasificar los alimentos por grupos:
* ‘huevos, lacteos y helados’ 
* ‘carnes y derivados’ 
* ‘pescados y mariscos’
* ‘alimentos grasos’
* ‘alimentos ricos en carbohidratos’
* ‘verduras y hortalizas’
* ‘frutas’ 
* ‘bebidas’
Genere pruebas para comprobar la clase de un objeto, el tipo de un objeto y su pertenecia a una jerarquia.

3. Utilizar la herramienta `Guard` de Comprobacion Continua con el codigo `Ruby` desarrollado. Se ha de configurar de manera que permita la ejecucion de las pruebas definidas con `Rspec` cuando se modifiquen.
4. Escribir la direccion http del repositorio de la organizaci´on ‘ULL-ESIT-LPP-1718/tdd’ en la tarea habilitada en el campus virtual. ( https://github.com/ULL-ESIT-LPP-1718/tdd.git )




## Usage

### Gemas utilizadas:

<li>bundler</li>
<li>rake</li>
<li>rspec</li>
<li>guard</li>

### En P8