# Practica 9 - LPP 17/18 - Nicolangelo Famiglietti

## Descripcion

Esta practica de laboratorio se ha de realizar utilizando el lenguaje de programacion `Ruby` y el paradigma de Programacion Funcional.
Se ha de partir de la estructura de la gema generada con la herramienta `Bundler` y realizar el control de versiones con `git` siguiendo su filosofia de ramas.
Para el desarrollo de las clases se ha de seguir la metodologia de *Desarrollo dirigido por pruebas*
(Test Driven Development - TDD) y la herramienta `RSpec`.
Considere la jerarquia de clases Ruby para representar alimentos y listas de practicas anteriores.

## TODO

1. Escriba el codigo que permita la representacion de la tabla mendiante un array.
2. Escriba el codigo que permita obtener un nuevo array con los elementos ordenados por su valor energetico usando bucles `for`.
3. Escriba el codigo que permita obtener un nuevo array con los elementos ordenados por su valor energetico usando el metodo `each`.
4. Escriba el codigo que permita obtener un nuevo array con los elementos ordenados por su valor energetico usando el metodo `sort`.
5. Haciendo uso del metodo `benchmark` de la clase *Benchmark* muestre un informe del tiempo de los ejercicios 2, 3, 4.
6. En este momento se deberia comprobar con la herramienta `Coverall` la historia del cubrimiento y las estadisticas del codigo `Ruby` desarrollado.
Darse de alta en https://https://coveralls.io/ y permitir que se acceda desde Github (poniendo a ON el proyecto).
Crear un fichero .coveralls.yml que contenga la configuracion, por ejemplo:

>service_name: travis-ci

Especificar la dependencia de desarrollo de esta gema en el fichero .gemspec

>spec.add_development_dependency "coveralls"

Ejecutar bundler para que se instalen las dependencias:

>bin/setup

Incluir en el fichero spec_helper.rb el c´odigo de coverall:

>require ’coveralls’
>Coveralls.wear!

## Usage
https://ull-esit-lpp-1718.github.io/tdd-alu0100912005/

Fork clase `Point`:

https://github.com/alu0100912005/point
### Gemas utilizadas:

<li>bundler</li>
<li>rake</li>
<li>rspec</li>
<li>guard</li>
<li>yard</li>
<li>travis</li>
<li>coveralls</li>

### En P10