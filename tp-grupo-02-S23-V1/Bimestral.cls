"Filed out from Dolphin Smalltalk"!

Catedra subclass: #Bimestral
	instanceVariableNames: 'fechaIni fechaFin'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

Bimestral guid: (GUID fromString: '{980210b9-cdf0-49bb-8230-b81bf26ea188}')!

Bimestral comment: ''!

!Bimestral categoriesForClass!Unclassified! !

!Bimestral methodsFor!

iniciarBimestral: unCod con: unNom con: unaCarga con: unLeg con: unTipo con: unNiv con: fIni con: fFin

super iniciarCatedra: unCod con: unNom con: unaCarga con: unLeg con: unTipo con: unNiv.
fechaIni:= fIni.
fechaFin:=fFin.

!

modificarFechaFin: unaFecha
fechaFin:=unaFecha.!

modificarFechaIni: unaFecha
fechaIni:= unaFecha.!

verFechaFin
^fechaFin.!

verFechaIni
^fechaIni.! !

!Bimestral categoriesForMethods!
iniciarBimestral:con:con:con:con:con:con:con:!public! !
modificarFechaFin:!public! !
modificarFechaIni:!public! !
verFechaFin!public! !
verFechaIni!public! !
!

!Bimestral class methodsFor!

crearBimestral: unCod con: unNom con: unaCarga con: unLeg con: unTipo con: unNiv con: fIni con:fFin
^(self new) iniciarBimestral: unCod con: unNom con: unaCarga con: unLeg con: unTipo con: unNiv con: fIni con: fFin.! !

!Bimestral class categoriesForMethods!
crearBimestral:con:con:con:con:con:con:con:!public! !
!

