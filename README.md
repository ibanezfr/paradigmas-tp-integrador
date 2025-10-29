# paradigmas-tp-integrador

## Grupo 2 - Inciso 2
Integrantes:
- Galvan, Valentin
- Bardella Acuña, Facundo
- Scarselletta, Lautaro
- Soto, Facundo Ariel
- Ibañez, Franco Ezequiel


## Inciso 2 - Sistema de Gestión de Carrera
Un instituto de formación se encuentra en pleno crecimiento y necesita un sistema de
gestión para sus carreras. Se requiere desarrollar un software que permita
gestionar a las distintas cátedras dentro de cada carrera, que pueden ser
anuales, cuatrimestrales o bimestrales.
El sistema debe permitir cargar la carrera con su nombre, cantidad de materias, cantidad
de niveles y disciplina a la que pertenece.
La carrera cuenta con distinta cantidad de cátedras. De cada una se conoce código,
nombre, carga horaria, legajo del docente a cargo, tipo (Curricular o Electiva) y nivel al que
pertenece (cada carrera cuenta con cinco niveles). Además, si la materia es bimestral se
debe conocer fecha de inicio y fecha de fin de cursada y si es cuatrimestral se debe conocer
el cuatrimestre al que pertenece (Primero, Segundo o Ambos).
Se debe poder buscar la cátedra en base a su código para poder modificarla y/o eliminarla,
así como generar un listado para ver todas las cátedras (esto también permitirá visualizar
los cambios efectuados).
Cada cuatro años, el listado de materias electivas se renueva por lo que se deben poder
mostrar y/o eliminar todas aquellas materias de este tipo y cargar nuevas (si así se desea).
Como al final del tercer nivel, la carrera ofrece un título intermedio, se debe poder mostrar
un listado de cátedras excluyendo las de los últimos dos niveles.
Calcular la cantidad total de horas de la carrera. Guardar en un diccionario la cantidad de
horas por tipo de cátedra (Anual, Cuatrimestral, Bimestral).