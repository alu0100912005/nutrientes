# Practica 9 - LPP 17/18 - Nicolangelo Famiglietti

## Descripcion

Esta practica de laboratorio se ha de realizar utilizando el lenguaje de programacion `Ruby` y el paradigma de Programacion Funcional.
Se ha de partir de la estructura de la gema generada con la herramienta `Bundler` y realizar el control de versiones con `git` siguiendo su filosofia de ramas.
Para el desarrollo de las clases se ha de seguir la metodologia de *Desarrollo dirigido por pruebas*
(Test Driven Development - TDD) y la herramienta `RSpec`.
Considere la jerarquia de clases Ruby para representar alimentos y listas de practicas anteriores.

## TODO

1.  Escribir un metodo para calcular el "Indice Glucemico" de un alimento que siga el paradigma de programacion funcional.
El area incremental bajo la curva (aibc) se determina como la suma de 24 areas trapezoidales `(Si)`, donde: G0 es la concentracion de glucosa antes de cada ingesta, Gi es la concentracion de glucosa en el tiempo i y ∆t es le intervalo de tiempo entre las mediciones (en este caso siempre 5 minutos).
Escriba un codigo fuente utilizando metodos como `collect`, `reduce`, `zip`, etc.
2.  Comprobar con la herramienta `Travis` de Integracion Continua. el codigo `Ruby` desarrollado.
Con ella se comprueba la portabilidad de los desarrollos entre distintas plataformas y versiones de Ruby.
El fichero .travis.yml contiene el listado de plataformas sobre las que se quiere comprobar el correcto funcionamiento.
La comprobacion se activa cada vez que se hace un `push` al repositorio de la gema.
3. Escribir la direccion http del repositorio de la organización ‘ULL-ESIT-LPP-1718/tdd’ en la tarea habilitada en el campus virtual. ( https://github.com/ULL-ESIT-LPP-1718/tdd-alu0100912005 )

## Usage
https://ull-esit-lpp-1718.github.io/tdd-alu0100912005/

añadido travis

Fork clase `Point`:

https://github.com/alu0100912005/point
### Gemas utilizadas:

<li>bundler</li>
<li>rake</li>
<li>rspec</li>
<li>guard</li>
<li>yard</li>
<li>travis</li>

### En P9