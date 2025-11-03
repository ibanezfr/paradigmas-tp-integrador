"Filed out from Dolphin Smalltalk"!

Object subclass: #Catedra
	instanceVariableNames: 'codigo nombre cargaHoraria legajoDocente tipo nivel anual'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

Catedra guid: (GUID fromString: '{dfcdaf39-d95e-47eb-9d61-60ec104b8514}')!

Catedra comment: ''!

!Catedra categoriesForClass!Unclassified! !

!Catedra methodsFor!

iniciarCatedra: unCod con: unNom con: unaCarga con: unLeg con: unTipo con: unNiv
    codigo := unCod.
    nombre := unNom.
    cargaHoraria := unaCarga.
    legajoDocente := unLeg.
    tipo := unTipo.
    nivel := unNiv.
   anual:= false.!

modAnual: unaAnu
anual:=unaAnu.
!

modCargaHoraria:unaCarga
cargaHoraria:=unaCarga.!

modCodigo: unCod
codigo:= unCod.
!

modLegajo: unLeg
legajoDocente:=unLeg.!

modNivel: unNiv
nivel:= unNiv.
!

modNombre: unNom
 nombre := unNom.!

modTipo: unTipo
tipo:=unTipo.!

verAnual
^anual.!

verCargaHoraria 
^cargaHoraria.!

verCodigo 
^codigo.!

verLegajo
^legajoDocente.!

verNivel 
^nivel.!

verNombre 
^nombre.
!

verTipo 
^tipo.! !

!Catedra categoriesForMethods!
iniciarCatedra:con:con:con:con:con:!public! !
modAnual:!public! !
modCargaHoraria:!public! !
modCodigo:!public! !
modLegajo:!public! !
modNivel:!public! !
modNombre:!public! !
modTipo:!public! !
verAnual!public! !
verCargaHoraria!public! !
verCodigo!public! !
verLegajo!public! !
verNivel!public! !
verNombre!public! !
verTipo!public! !
!

!Catedra class methodsFor!

crearCatedra: unCod con: unNom con: unaCarga con: unLeg con: unTipo con: unNiv
    ^self new iniciarCatedra: unCod con: unNom con: unaCarga con: unLeg con: unTipo con: unNiv.!

crearCatedra: unCod con: unNom con: unaCarga con: unLeg con: unTipo con: unNiv con: anu
    ^self new iniciarCatedra: unCod con: unNom con: unaCarga con: unLeg con: unTipo con: unNiv con: anu.! !

!Catedra class categoriesForMethods!
crearCatedra:con:con:con:con:con:!public! !
crearCatedra:con:con:con:con:con:con:!public! !
!

