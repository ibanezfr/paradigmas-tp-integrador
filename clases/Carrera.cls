"Filed out from Dolphin Smalltalk"!

Object subclass: #Carrera
	instanceVariableNames: 'nombre cantMaterias cantNiveles disciplina catedras'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

Carrera guid: (GUID fromString: '{2331fa1d-8566-42f1-897b-ec1044fdfffd}')!

Carrera comment: ''!

!Carrera categoriesForClass!Kernel-Objects! !

!Carrera methodsFor!

agregarCatedra: unaCat
catedras add: unaCat.
!

eliminarCatedra:unaCat
catedras remove: unaCat ifAbsent:[^nil].!

esVacia
^catedras isEmpty.
!

iniciar:nom cantMaterias: cantMat cantNiveles: cantNiv disc: unaDisc
nombre:=nom.
cantMaterias:=cantMat.
cantNiveles:=cantNiv.
disciplina:=unaDisc.
catedras:=OrderedCollection new.

!

modificarCantMaterias: unaMat
cantMaterias:=unaMat.!

modificarCantNiveles:unNiv
cantNiveles:=unNiv.!

modificarDisciplina:unaDis
disciplina:=unaDis.!

modificarNombre:unNom
nombre:= unNom.
!

recuperarCatedra: indice
^catedras at: indice.!

tamanio
^catedras size.!

verCantMaterias
^cantMaterias.!

verCantNiveles
^cantNiveles.!

verDisciplina
^disciplina.!

verNombre
^nombre.!

verTodos
^catedras.! !

!Carrera categoriesForMethods!
agregarCatedra:!public! !
eliminarCatedra:!public! !
esVacia!public! !
iniciar:cantMaterias:cantNiveles:disc:!public! !
modificarCantMaterias:!public! !
modificarCantNiveles:!public! !
modificarDisciplina:!public! !
modificarNombre:!public! !
recuperarCatedra:!public! !
tamanio!public! !
verCantMaterias!public! !
verCantNiveles!public! !
verDisciplina!public! !
verNombre!public! !
verTodos!public! !
!

!Carrera class methodsFor!

crear:nom con:cantMat con:cantNiv con:unaDisc
    ^self new iniciar:nom cantMaterias: cantMat cantNiveles: cantNiv disc: unaDisc.




! !

!Carrera class categoriesForMethods!
crear:con:con:con:!public! !
!

