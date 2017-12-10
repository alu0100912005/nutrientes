# Practica 11 - LPP 17/18 - Nicolangelo Famiglietti

## Descripcion

Esta practica de laboratorio se ha de realizar utilizando el lenguaje de programacion `Ruby` y el paradigma de Programacion Funcional.
Se ha de partir de la estructura de la gema generada con la herramienta `Bundler` y realizar el control de versiones con `git` siguiendo su filosofia de ramas.
Para el desarrollo de las clases se ha de seguir la metodologia de *Desarrollo dirigido por pruebas*
(Test Driven Development - TDD) y la herramienta `RSpec`.
Considere la jerarquia de clases Ruby para representar alimentos y listas de practicas anteriores.

## TODO

1. Diseñar e implementar un Lenguaje de *Dominio Específico Domain Specific Language - DSL*, siguiendo la filosofía de `Ruby` que permita la definición de Platos Harvard.
Los DSL son herramientas útiles que permiten expresar fácilmente la lógica específica de un problema particular (dominio) que de otro modo sería difícil o farragoso de escribir en otro
idioma. Por lo general, se trata de definir una gramática que se asemeja más al léxico utilizado por el dominio de destino. Por ejemplo, un matemático que trabaja con matrices no piensa en
bucles, iteradores o arrays, sino que piensa en términos de vectores, productos y transformaciones. El uso de un lenguaje de propósito general, como Ruby, con sólo arrays e iteradores requeriría que el matemático practicara gimnasia mental para traducir mentalmente entre el dominio de su
problema y el del lenguaje con el que escribe el código (Ruby). El uso de un DSL diseñado para las operaciones que le interesan eliminaría esta traducción mental y proporcionaría un código
más conciso.
Los DSL tienen dos formas: externos e internos. Los DSL externos existen independientemente de cualquier otro lenguaje. Los DSL internos estan alojados dentro de otro lenguaje de programación - por ejemplo, Rails es un DSL interno que se aloja en el lenguaje de programación Ruby.
El DSL que diseñe ha de permitir la definición de platos de una forma natural. 

2. La salida del ejemplo anterior podría ser como la siguiente:


Lentejas con arroz, salsa de tomate, huevo y plátano a la plancha

=================================================================

Composición nutricional:

glúcidos proteínas lípidos valor energético

Tomate 1.0 3.5 0.2 56.4

Plátano 1.2 21.4 0.2 182.4

Arroz 6.8 77.7 0.6 1021.2

Lentejas 23.5 52.0 1.4 1538.0

Huevo 3.3 4.8 3.2 72.32

Aceite de oliva 0.0 0.2 99.6 39.92

Valor energético total 2910.24

3. Crear una cuenta en rubygems.org. El `‘handle’` que se solicita es el nombre de usuario.
4. Almacenar las credenciales de rubygems.org en la máquina local.

`curl -u qrush https://rubygems.org/api/v1/api_key.yaml > ~/.gem/credentials; chmod 0600 ~/.gem/credentials`

5. Puesto que ya se terminado de escribir código, se está listos para construir y publicar la gema.
-Para construir la gema, desde el directorio raíz creado con `Bundler` ejecutar: `rake build`
-Para crear la `version 0.1.0` de la gema ejecutar: `rake release`
-Para instalar gema ejecutar: `rake install`
-Para comprobrar que ha ido bien la instalación , ejecutar: `gem menu`

6. Escribir la dirección http de la gema que ha creado en la tarea del campus virtual.


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

### En P11