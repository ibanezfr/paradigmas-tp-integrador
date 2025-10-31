"Filed out from Dolphin Smalltalk"!

Object subclass: #Catedra
	instanceVariableNames: 'codigo nombre cargaHoraria legajoDocente tipo nivel modalidad fechaInicio fechaFin cuatrimestre'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

Catedra guid: (GUID fromString: '{dfcdaf39-d95e-47eb-9d61-60ec104b8514}')!

Catedra comment: ''!

!Catedra categoriesForClass!Unclassified! !

!Catedra methodsFor!

configurarBimestral: ini fin: fi
    modalidad := 'Bimestral'.
    fechaInicio := ini.
    fechaFin := fi.!

configurarCuatrimestral: cuatri
    modalidad := 'Cuatrimestral'.
    cuatrimestre := cuatri.!

iniciarCatedra: unCod con: unNom con: unaCarga con: unLeg con: unTipo con: unNiv con: unaMod
    codigo := unCod.
    nombre := unNom.
    cargaHoraria := unaCarga.
    legajoDocente := unLeg.
    tipo := unTipo.
    nivel := unNiv.
    modalidad := unaMod.
    fechaInicio := nil.
    fechaFin := nil.
    cuatrimestre := nil.!

modCargaHoraria:unaCarga
cargaHoraria:=unaCarga.!

modCodigo: unCod
codigo:= unCod.
!

modModalidad: unaMod
modalidad:= unaMod.
!

modNivel: unNiv
nivel:= unNiv.
!

modNombre: unNom
 nombre := unNom.!

modTipo: unTipo
tipo:=unTipo.!

verCargaHoraria 
^cargaHoraria.!

verCodigo 
^codigo.!

verModalidad 
^modalidad.!

verNivel 
^nivel.!

verNombre 
^nombre.
!

verTipo 
^tipo.! !

!Catedra categoriesForMethods!
configurarBimestral:fin:!public! !
configurarCuatrimestral:!public! !
iniciarCatedra:con:con:con:con:con:con:!public! !
modCargaHoraria:!public! !
modCodigo:!public! !
modModalidad:!public! !
modNivel:!public! !
modNombre:!public! !
modTipo:!public! !
verCargaHoraria!public! !
verCodigo!public! !
verModalidad!public! !
verNivel!public! !
verNombre!public! !
verTipo!public! !
!

!Catedra class methodsFor!

crearCatedra: unCod con: unNom con: unaCarga con: unLeg con: unTipo con: unNiv con: unaMod
    ^(self new) iniciarCatedra: unCod con: unNom con: unaCarga con: unLeg con: unTipo con: unNiv con: unaMod.! !

!Catedra class categoriesForMethods!
crearCatedra:con:con:con:con:con:con:!public! !
!

