"Filed out from Dolphin Smalltalk"!

Catedra subclass: #Anual
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

Anual guid: (GUID fromString: '{3f4af8b6-7b22-42b3-85a5-b74e900fba0e}')!

Anual comment: ''!

!Anual categoriesForClass!Unclassified! !

!Anual methodsFor!

iniciarAnual: unCod con: unNom con: unaCarga con: unLeg con: unTipo con: unNiv
    codigo := unCod.
    nombre := unNom.
    cargaHoraria := unaCarga.
    legajoDocente := unLeg.
    tipo := unTipo.
    nivel := unNiv.
   anual:= true.! !

!Anual categoriesForMethods!
iniciarAnual:con:con:con:con:con:!public! !
!

!Anual class methodsFor!

crearAnual: unCod con: unNom con: unaCarga con: unLeg con: unTipo con: unNiv
    ^self new iniciarAnual: unCod con: unNom con: unaCarga con: unLeg con: unTipo con: unNiv.! !

!Anual class categoriesForMethods!
crearAnual:con:con:con:con:con:!public! !
!

