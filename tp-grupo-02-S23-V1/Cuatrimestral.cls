"Filed out from Dolphin Smalltalk"!

Catedra subclass: #Cuatrimestral
	instanceVariableNames: 'cuatrimestral'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

Cuatrimestral guid: (GUID fromString: '{24664716-b066-4a69-a158-bac11c162683}')!

Cuatrimestral comment: ''!

!Cuatrimestral categoriesForClass!Unclassified! !

!Cuatrimestral methodsFor!

iniciarCuatrimestral: unCod con: unNom con: unaCarga con: unLeg con: unTipo con: unNiv  con: cuatri

super iniciarCatedra: unCod con: unNom con: unaCarga con: unLeg con: unTipo con: unNiv.
cuatrimestral:= cuatri.!

modCuatrimestre: unCuatri
cuatrimestral:= unCuatri.!

verCuatrimestral
^cuatrimestral.! !

!Cuatrimestral categoriesForMethods!
iniciarCuatrimestral:con:con:con:con:con:con:!public! !
modCuatrimestre:!public! !
verCuatrimestral!public! !
!

!Cuatrimestral class methodsFor!

crearCuatrimestral: unCod con: unNom con: unaCarga con: unLeg con: unTipo con: unNiv con:cuatri
^(self new) iniciarCuatrimestral: unCod con: unNom con: unaCarga con: unLeg con: unTipo con: unNiv con: cuatri.! !

!Cuatrimestral class categoriesForMethods!
crearCuatrimestral:con:con:con:con:con:con:!public! !
!

