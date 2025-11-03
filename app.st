| nom cantMat cantNiv unaDisc cod nomCat cargaH leg tipo niv fechaIni fechaFin cuatri|
"
	'1. Cargar catedra'
	'2. Buscar cátedra por codigo (Modificar/Eliminar)'
	'3. Listar TODAS las cátedras'
	'4. Listar materias electivas'
	'5. Listar cátedrias de los primeros 3 niveles'
	'6. Calcular total horas de carrera'
	'7. Listar diccionario de cantidad de horas por tipo de cátedra'
	'0. Salir'
"

"------------------------------------------------------------------------------------------Creacion de carrera.------------------------------------------------------------------------------------------"
nom:= (Prompter prompt: 'Ingrese el nombre de la carrera' caption: 'Creando carrera.')asString capitalized.
cantMat:=(Prompter prompt: 'Ingrese la cantidad de materias de la carrera.' caption: 'Creando carrera.' )asNumber.
cantNiv:=(Prompter prompt: 'Ingrese la cantidad de nieveles de la carrera.' caption: 'Creando carrera.' ).
unaDisc:=(Prompter prompt: 'Ingrese la disciplina.' caption: 'Creando carrera.')asString capitalized.
car:= Carrera crear: nom con: cantMat con: cantNiv con: unaDisc.
MessageBox notify: 'Se creo la carrera con exito' caption: 'Creando carrera.'.
"---------------------------------------------------------------------------------------------------------------------------------------------------"
"****************Pre carga de prueba****************"
cat:= Catedra crearCatedra: 01 con: 'AyED' con: 60 con: 12345 con: 'Curricular' con: 1.
car agregarCatedra: cat.
cat:= Catedra crearCatedra: 02 con: 'Sistemas y organizaciones' con: 40 con: 23456 con: 'Electiva' con: 1.
car agregarCatedra: cat.
cat:= Cuatrimestral crearCuatrimestral: 03 con: 'sintaxis' con: 30 con: 42456 con: 'Curricular' con: 2 con: 'Primero'.
car agregarCatedra: cat.
cat:= Catedra crearCatedra: 520 con: 'paradigmas' con: 50 con: 23456 con: 'Curricular' con: 2.
car agregarCatedra: cat.
cat:= Catedra crearCatedra: 960 con: 'DSI' con: 90 con: 65875 con: 'Curricular' con: 1.
car agregarCatedra: cat.
cat:= Catedra crearCatedra: 785 con: 'ASI' con: 40 con: 23456 con: 'Electiva' con: 4.
car agregarCatedra: cat.
cat:= Bimestral crearBimestral: 541 con: 'Quimica' con: 90 con: 68233 con: 'Electiva' con: 3 con: Date today con: Date today + 60.
"---------------------------------------------------------------------------------------------------------------------------------------------------"
"---------------------------------------------------------------------Carga de catedras.-----------------------------------------------------------------------"
flag2:=true.
[flag2] whileTrue: [
	options := #('Cargar Catedra' 'Modificar Catedra' 'Eliminar Catedra' 'Listar Catedras' 'Mostrar Electivas' 'Eliminar Electiva' 'Mostrar Catedras 3er Año' 'Calcular Horas Totales' 'Guardar Horas Por Tipo' 'Cerrar Programa').
	select := (ChoicePrompter choices: options caption: 'Seleccione una opción') displayString.
	(select = 'Cerrar Programa')ifTrue: [
		flag2:=false.
	].
	(select ='Cargar Catedra')ifTrue: [
		flag:=true.
		"Mientras flag sea true va a volver al while"
		[flag]whileTrue: [
			cod:= (Prompter prompt: 'Ingrese codigo de catedra.' caption: 'Carga de catedras.')asNumber.
			nomCat:=(Prompter prompt: 'Ingrese el nombre de la catedra.' caption: 'Carga de catedras.')asString capitalized.
			cargaH:=(Prompter prompt: 'Ingrese la carga horaria de la catedra.' caption: 'Carga de catedras.')asNumber.
			optionsTipo:=#('Curricular' 'Electiva').
			select:=(ChoicePrompter choices: optionsTipo caption: 'Seleccione una opción')displayString.
			(select = 'Curricular')ifTrue: [
				tipo:='Curricular'.
			].
			(select = 'Electiva')ifTrue: [
				tipo:='Electiva'.
		].
			leg:=(Prompter prompt: 'Ingrese el legajo del docente a cargo.' caption: 'Carga de catedras.')asNumber.
			niv:=(Prompter prompt: 'Ingrese el nivel al que pertenece la catedra (1-5).' caption: 'Carga de catedras.')asNumber.
			optionsMod := #('Bimestral' 'Cuatrimestral' ).
			select := (ChoicePrompter choices: optionsMod caption: 'Seleccione una opción') displayString.

			(select = 'Bimestral')ifTrue: [
				dia:=(Prompter prompt: 'Ingrese dia de inicio.' caption: 'Carga de catedras Bimestrales.')asNumber.
				mes:=(Prompter prompt: 'Ingrese el dia de inicio' caption: 'Carga de catedras Bimestrales.')asNumber.
				fechaIni := Date year: 2025 month: mes day: dia.
				dia:=(Prompter prompt: 'Ingrese dia de finalizacion.' caption: 'Carga de catedras Bimestrales.')asNumber.
				mes:=(Prompter prompt: 'Ingrese el dia de finalizacion.' caption: 'Carga de catedras Bimestrales.')asNumber.
				fechaFin:= Date year: 2025 month: mes day: dia.
				cat:= Bimestral crearBimestral: cod con: nomCat con: cargaH con: leg con: tipo con: niv con: fechaIni con: fechaFin.
			].
			(select = 'Cuatrimestral')ifTrue: [
			optionsCuatri:=#('Primero.' 'Segundo.' 'Ambos.').
			select:=(ChoicePrompter choices: optionsCuatri caption: 'Seleccione una opción')displayString.
			(select = 'Primero')ifTrue: [
				cuatri:='Primero'.
			].
			(select = 'Segundo')ifTrue: [
				cuatri:='Segundo'.
			].
			(select = 'Ambos')ifTrue: [
				cuatri:='Ambos'.
			].
				cat:= Cuatrimestral crearCuatrimestral: cod con: nomCat con: cargaH con: leg con: tipo con: niv con: cuatri.
			].
		car agregarCatedra: cat.
		"Uso un messageBox para cambiar la variable flag"
		flag:=MessageBox confirm: '¿Desea seguir cargando catedras?' caption: 'Carga de catedras'.
		]."Fin while"
	]."Aca termina el Cargar Catedra"
	(select = 'Modificar Catedra')ifTrue: [
		seguir :=true.
		[seguir]whileTrue: [
			cod:=(Prompter prompt: 'Ingrese el codigo de la catedra a modificar.' caption: 'Modificar Catedra.')asNumber.
			col:= car verTodos.
			"Agarra el primer objeto de la coleccion que coincida con el codigo"
			cat:= col detect: [:c | c verCodigo = cod] ifNone: [nil].
			(cat isNil )ifTrue: [MessageBox error: 'La catedra no existe.'.] ifFalse: [
				(c isKindOf: Cuatrimestral )ifTrue: [
					options:=#('Modificar Nombre' 'Modificar Carga Horaria' 'Modificar Legajo de Docente a Cargo' 'Modificar Tipo' 'Modificar Nivel' 'Modificar Cuatrimestre').
					select:=(ChoicePrompter choices: options caption: 'Seleccione una opción') displayString.
					(select = 'Modificar Nombre')ifTrue: [
						nom:=(Prompter prompt: 'Ingrese el nuevo nombre.' caption: 'Modificar Nombre.')asString capitalized.
						cat modNombre: nom.
						MessageBox notify: 'Se cambio con exito el nombre' caption: 'Modificar Nombre'.
					].
					(select = 'Modificar Carga Horaria')ifTrue: [
						carga:=(Prompter prompt: 'Ingrese la nueva carga horaria de la catedra.' caption: 'Modificar Carga Horaria.' )asNumber.
						cat modCargaHoraria: carga.
					].
					(select = 'Modificar Legajo de Docente a Cargo')ifTrue: [
						lega:=(Prompter prompt: 'Ingrese el nuevo legajo del profesor a cargo.' caption: 'Modificar Legajo de Docente a Cargo' )asNumber.
						cat modLegajo: lega.
						MessageBox notify: 'Se cambio con exito el legajo' caption: 'Modificar Legajo de Docente a Cargo'.
					].
					(select = 'Modificar Tipo')ifTrue: [
						optionsTipo:=#('Curricular' 'Electiva' 'Volver').
					select:=(ChoicePrompter choices: optionsTipo caption: 'Seleccione una opción')displayString.
					(select = 'Curricular')ifTrue: [
						tipo:='Curricular'.
						MessageBox notify: 'Se cambio con exito el tipo a "Curricular".' caption: 'Modificar Tipo'.
					].
					(select = 'Electiva')ifTrue: [
						tipo:='Electiva'.
						MessageBox notify: 'Se cambio con exito el tipo a "Electiva".' caption: 'Modificar Tipo'.
					].						
					].
				(select = 'Modificar Nivel')ifTrue: [
					niv:=(Prompter prompt: 'Ingrese el nivel al cual desea cambiar (1-5).' caption: 'Modificar Nivel')asNumber.
					cat modNivel: niv.
					MessageBox notify: 'Se cambio con exito el nivel' caption: 'Modificar Nivel'.
				].
				(select = 'Modificar Cuatrimestre')ifTrue: [
					optionsCuatri:=#('Primero.' 'Segundo.' 'Ambos.').
					select:=(ChoicePrompter choices: optionsCuatri caption: 'Seleccione una opción')displayString.
					(select = 'Primero')ifTrue: [
						cuatri:='Primero'.
					].
					(select = 'Segundo')ifTrue: [
						cuatri:='Segundo'.
					].
					(select = 'Ambos')ifTrue: [
						cuatri:='Ambos'.
					].
					c modCuatrimestre: cuatri.


				].		
			]."fin if cuatrimestral"
			(c isKindOf: Bimestral )ifTrue: [									
				options:=#('Modificar Nombre' 'Modificar Carga Horaria' 'Modificar Legajo de Docente a Cargo' 'Modificar Tipo' 'Modificar Nivel' 'Modificar Fecha Bimestral').
				select:=(ChoicePrompter choices: options caption: 'Seleccione una opción') displayString.
				(select = 'Modificar Nombre')ifTrue: [
					nom:=(Prompter prompt: 'Ingrese el nuevo nombre.' caption: 'Modificar Nombre.')asString capitalized.
					cat modNombre: nom.
					MessageBox notify: 'Se cambio con exito el nombre' caption: 'Modificar Nombre'.
				].
				(select = 'Modificar Carga Horaria')ifTrue: [
					carga:=(Prompter prompt: 'Ingrese la nueva carga horaria de la catedra.' caption: 'Modificar Carga Horaria.' )asNumber.
					cat modCargaHoraria: carga.
				].
				(select = 'Modificar Legajo de Docente a Cargo')ifTrue: [
					lega:=(Prompter prompt: 'Ingrese el nuevo legajo del profesor a cargo.' caption: 'Modificar Legajo de Docente a Cargo' )asNumber.
					cat modLegajo: lega.
					MessageBox notify: 'Se cambio con exito el legajo' caption: 'Modificar Legajo de Docente a Cargo'.
				].
				(select = 'Modificar Tipo')ifTrue: [
					optionsTipo:=#('Curricular' 'Electiva' 'Volver').
					"No cambiar es por si me equivoco de boton, en vez de poner 'atras' le pongo eso, por cual quier cosa que pueda pasar"
					select:=(ChoicePrompter choices: optionsTipo caption: 'Seleccione una opción')displayString.
					(select = 'Curricular')ifTrue: [
						tipo:='Curricular'.
						MessageBox notify: 'Se cambio con exito el tipo a "Curricular".' caption: 'Modificar Tipo'.
					].
					(select = 'Electiva')ifTrue: [
						tipo:='Electiva'.
						MessageBox notify: 'Se cambio con exito el tipo a "Electiva".' caption: 'Modificar Tipo'.
					].
						
					].
				(select = 'Modificar Nivel')ifTrue: [
					niv:=(Prompter prompt: 'Ingrese el nivel al cual desea cambiar (1-5).' caption: 'Modificar Nivel')asNumber.
					cat modNivel: niv.
					MessageBox notify: 'Se cambio con exito el nivel' caption: 'Modificar Nivel'.
				].
				(select = 'Modificar Fecha Bimestral')ifTrue: [
					unDiaIni:=Prompter prompt: 'Ingrese el nuevo dia de inicio.' caption: 'Modificar Fecha Bimestral'.
					unMesIni:= Prompter prompt: 'Ingrese el nuevo mes de inicio.' caption: 'Modificar Fecha Bimestral'.
					unaFechaIni:=Date year: 2025 month: unMesIni day: unDiaIni.
					unDiaFin:=Prompter prompt: 'Ingrese el nuevo dia de finalizacion.' caption: 'Modificar Fecha Bimestral'.
					unMesFin:= Prompter prompt: 'Ingrese el nuevo mes de finalizacion.' caption: 'Modificar Fecha Bimestral'.
					unaFechaFin:=Date year: 2025 month: unMesIni day: unDiaIni.
					c modificarFechaIni: unaFechaIni.
					c modificarFechaFin: unaFechaFin.
					MessageBox notify: 'Se cambio con exito la fecha.' caption: 'Modificar Fecha Bimestral'.


				].
			]."Fin if bimestral"
			(c verAnual)ifTrue: [					
					options:=#('Modificar Nombre' 'Modificar Carga Horaria' 'Modificar Legajo de Docente a Cargo' 'Modificar Tipo' 'Modificar Nivel' 'Modificar Anual').
					select:=(ChoicePrompter choices: options caption: 'Seleccione una opción') displayString.
					(select = 'Modificar Nombre')ifTrue: [
						nom:=(Prompter prompt: 'Ingrese el nuevo nombre.' caption: 'Modificar Nombre.')asString capitalized.
						cat modNombre: nom.
						MessageBox notify: 'Se cambio con exito el nombre' caption: 'Modificar Nombre'.
					].
					(select = 'Modificar Carga Horaria')ifTrue: [
						carga:=(Prompter prompt: 'Ingrese la nueva carga horaria de la catedra.' caption: 'Modificar Carga Horaria.' )asNumber.
						cat modCargaHoraria: carga.
					].
					(select = 'Modificar Legajo de Docente a Cargo')ifTrue: [
						lega:=(Prompter prompt: 'Ingrese el nuevo legajo del profesor a cargo.' caption: 'Modificar Legajo de Docente a Cargo' )asNumber.
						cat modLegajo: lega.
						MessageBox notify: 'Se cambio con exito el legajo' caption: 'Modificar Legajo de Docente a Cargo'.
					].
					(select = 'Modificar Tipo')ifTrue: [
						optionsTipo:=#('Curricular' 'Electiva' 'Volver').
					select:=(ChoicePrompter choices: optionsTipo caption: 'Seleccione una opción')displayString.
					(select = 'Curricular')ifTrue: [
						tipo:='Curricular'.
						MessageBox notify: 'Se cambio con exito el tipo a "Curricular".' caption: 'Modificar Tipo'.
					].
					(select = 'Electiva')ifTrue: [
						tipo:='Electiva'.
						MessageBox notify: 'Se cambio con exito el tipo a "Electiva".' caption: 'Modificar Tipo'.
					].						
					].
				(select = 'Modificar Nivel')ifTrue: [
					niv:=(Prompter prompt: 'Ingrese el nivel al cual desea cambiar (1-5).' caption: 'Modificar Nivel')asNumber.
					cat modNivel: niv.
					MessageBox notify: 'Se cambio con exito el nivel' caption: 'Modificar Nivel'.
				].
				(select = 'Modificar Anual')ifTrue: [
					optionsCuatri:=#('Si.' 'No.' 'Volver.').
					select:=(ChoicePrompter choices: optionsCuatri caption: 'Seleccione una opción')displayString.
					(select = 'Si')ifTrue: [
						anu:=true.
					].
					(select = 'No')ifTrue: [
						anu:=false.
					].
					c modAnual: anu.

					].	
				]."Aca termina el if Anual"



		]."fin if isNil"
		seguir=MessageBox confirm: '¿Desea seguir modificando catedras?' caption: 'Modificar Catedras'.
	]."Fin while"

]."Aca termina el Modificar Catedra"

	].
	(select= 'Eliminar Catedra')ifTrue: [
		c:=nil.
		cod:=(Prompter prompt: 'Ingrese el codigo de la catedra a Eliminar.' caption: 'Eliminar Catedra.')asNumber.
		col:= car verTodos.
		"Agarra el primer objeto de la coleccion que coincida con el codigo"
		cat:= col detect: [:c | c verCodigo = cod] ifNone: [nil].
		(cat isNil)ifTrue: [MessageBox error: 'La catedra no existe.'.] 
		ifFalse: [
			car eliminarCatedra: cat.
			MessageBox notify: 'Se elimino con exito la catedra.' caption: 'Eliminar Catedra.'.
		].
	]."Aca termina Eliminar Catedra"
	(select = 'Listar Catedras') ifTrue: [
	    | catedras |
	    catedras := car verTodos.
	    Transcript clear.
	    catedras do: [:cated |
		
		Transcript show: 'Nivel: ',(cated verNivel printString);cr.
		Transcript show: 'Codigo: ',(cated verCodigo printString);cr.
		Transcript show: 'Nombre: ',(cated verNombre);cr.
		Transcript show: 'Carga Horaria: ',(cated verCargaHoraria printString);cr.
		Transcript show: 'Tipo: ',(cated verTipo); cr.

		(cated isKindOf: Cuatrimestral) ifTrue: [
		    Transcript show: 'Cuatrimestre: ', (cated verCuatrimestral); cr.
		].
		(cated isKindOf: Bimestral) ifTrue: [
		    Transcript show: 'Fecha de Inicio: ', (cated verFechaIni printString ); cr.
		    Transcript show: 'Fecha de Finalización: ', (cated verFechaFin printString); cr.
		].
		"(cated isKindOf: Anual) ifTrue: [
		    Transcript show: 'Anual: Sí.'; cr.
		]."

		Transcript show: '------------------------------------'; cr.
	    ].
	]."Aca termina Listar Catedras"	
	(select= 'Mostrar Electivas')ifTrue: [
		materias:= car verTodos.
		electivas:= materias select: [:m | m verTipo = 'Electiva'].
		Transcript show: '-----Materias Electivas-----'.
		electivas do: [:mat | Transcript show: 'Nivel: ' ,mat verNivel ;cr.
			Transcript show: 'Codigo: ' ,mat verCodigo ;cr.
			Transcript show: 'Nombre',mat verNombre ;cr.
			Transcript show: 'Carga Horaria: ' ,mat verCargaHoraria ;cr.
			Transcript show: 'Tipo: ' ,mat verTipo ;cr.
			Transcript show: 'Nivel: ' ,mat verNivel ;cr.
			(mat isKindOf: Cuatrimestral)ifTrue: [
				Transcript show: 'Cuatrimestre: ', mat verCuatrimestral;cr.
		
			].
			(mat isKindOf: Bimestral)ifTrue: [
				Transcript show: 'Fecha de Inicio: ', mat verFechaIni;cr.
				Transcript show: 'Fecha de Finalizacion: ', mat verFechaFin.
			].
			"(mat isKindOf: Anual )ifTrue: [
				Transcript show: 'Anual: Si.'.
			]."
			Transcript show: '--------------------------------------';cr.
		]."Aca termina Mostrar Electivas"


	].
		
	(select= 'Mostrar Catedras 3er Año')ifTrue: [
		catedras:= car verTodos.
		max:= 3.
		filtradas:=catedras select: [:f | 
			Transcript show: 'Nivel: ' ,f verNivel ;cr.
			Transcript show: 'Codigo: ' ,f verCodigo ;cr.
			Transcript show: 'Nombre',f verNombre ;cr.
			Transcript show: 'Carga Horaria: ' ,f verCargaHoraria ;cr.
			Transcript show: 'Tipo: ' ,f verTipo ;cr.
			Transcript show: 'Nivel: ' ,f verNivel ;cr.
			(f isKindOf: Cuatrimestral)ifTrue: [
				Transcript show: 'Cuatrimestre: ', f verCuatrimestral;cr.
		
			].
			(f isKindOf: Bimestral)ifTrue: [
				Transcript show: 'Fecha de Inicio: ', f verFechaIni;cr.
				Transcript show: 'Fecha de Finalizacion: ', f verFechaFin.
			].
			"(f isKindOf: Anual )ifTrue: [
				Transcript show: 'Anual: Si.'.
			]."
			Transcript show: '--------------------------------------';cr.

		].



]."Aca termina Mostrar catedras 3er Año"
	(select= 'Calcular Horas Totales')ifTrue: [
		catedras:=car verTodos.
		horasTotales:= catedras inject: 0 into: [:sum :cated| sum +(cated verCargaHoraria)].
		Transcript show: 'Horas Totales: ', horasTotales.



]."Aca terminar calcular horas totales"
	(select= 'Guardar Horas Por Tipo')ifTrue: []."Aca termina guardar horas por tipo"
].