| nom cantMat cantNiv unaDisc cod nomCat cargaH leg tipo niv fechaIni fechaFin cuatri c|
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
"nom:= (Prompter prompt: 'Ingrese el nombre de la carrera' caption: 'Creando carrera.')asString capitalized."
nom:='Ingeniería en Sistemas de Información'.
"cantMat:= IntegerPrompter prompt: 'Ingrese la cantidad de materias de la carrera.' caption: 'Creando carrera.' ."
"cantNiv:= ChoicePrompter choices: (1 to: 5) caption: 'Ingrese la cantidad de niveles de la carrera.'."
"unaDisc:=(Prompter prompt: 'Ingrese la disciplina.' caption: 'Creando carrera.')asString capitalized."
cantNiv:=5.
unaDisc:='TI'.
cantMat:=62.
car:= Carrera crear: nom con: cantMat con: cantNiv con: unaDisc.
"MessageBox notify: 'Se creo la carrera con exito' caption: 'Creando carrera.'."

"---------------------------------------------------------------------------------------------------------------------------------------------------"
"**************** Pre-carga de materias****************"

"--- 1er año (Nivel 1, Anual -> Catedra) ---"
cat:= Anual crearAnual: 0106 con: 'Algoritmos y Estructuras de Datos' con: 90 con: 20101 con: 'Curricular' con: 1. car agregarCatedra: cat. 
cat := Anual crearAnual: 0101 con: 'Análisis Matemático I'                 con: 80 con: 20102 con: 'Curricular' con: 1.  car agregarCatedra: cat.
cat := Anual crearAnual: 0107 con: 'Arquitectura de Computadoras'          con: 70 con: 20103 con: 'Curricular' con: 1.  car agregarCatedra: cat.
cat := Anual crearAnual: 0103 con: 'Física I'                              con: 60 con: 20104 con: 'Curricular' con: 1.  car agregarCatedra: cat.
cat := Anual crearAnual: 0104 con: 'Inglés I'                              con: 30 con: 20105 con: 'Curricular' con: 1.  car agregarCatedra: cat.
cat := Anual crearAnual: 0105 con: 'Lógica y Estructuras Discretas'        con: 60 con: 20106 con: 'Curricular' con: 1.  car agregarCatedra: cat.
cat := Anual crearAnual: 0108 con: 'Sistemas y Procesos de Negocio'        con: 60 con: 20107 con: 'Curricular' con: 1.  car agregarCatedra: cat.
cat := Anual crearAnual: 0102 con: 'Álgebra y Geometría Analítica'         con: 80 con: 20108 con: 'Curricular' con: 1.  car agregarCatedra: cat.

"--- 2º año (Nivel 2) ---"
"Anuales"
cat := Anual crearAnual: 0208 con: 'Análisis de Sistemas de Información'   con: 70 con: 20201 con: 'Curricular' con: 2.  car agregarCatedra: cat.
cat := Anual crearAnual: 0201 con: 'Análisis Matemático II'                con: 80 con: 20202 con: 'Curricular' con: 2.  car agregarCatedra: cat.
cat := Anual crearAnual: 0202 con: 'Física II'                             con: 60 con: 20203 con: 'Curricular' con: 2.  car agregarCatedra: cat.
cat := Anual crearAnual: 0203 con: 'Ingeniería y Sociedad'                 con: 40 con: 20204 con: 'Curricular' con: 2.  car agregarCatedra: cat.
cat := Anual crearAnual: 0204 con: 'Inglés II'                             con: 30 con: 20205 con: 'Curricular' con: 2.  car agregarCatedra: cat.
cat := Anual crearAnual: 0207 con: 'Sistemas Operativos'                   con: 70 con: 20206 con: 'Curricular' con: 2.  car agregarCatedra: cat.

"Cuatrimestrales"
cat := Cuatrimestral crearCuatrimestral: 0205 con: 'Sintaxis y Semántica de los Lenguajes' con: 50 con: 20207 con: 'Curricular' con: 2 con: 'Primero'.  car agregarCatedra: cat.
cat := Cuatrimestral crearCuatrimestral: 0206 con: 'Paradigmas de Programación'            con: 60 con: 20208 con: 'Curricular' con: 2 con: 'Segundo'.  car agregarCatedra: cat.

"--- 3º año (Nivel 3) ---"
"Anuales"
cat := Anual crearAnual: 0306 con: 'Análisis Numérico'                     con: 60 con: 20301 con: 'Curricular' con: 3.  car agregarCatedra: cat.
cat := Anual crearAnual: 0303 con: 'Bases de Datos'                         con: 80 con: 20302 con: 'Curricular' con: 3.  car agregarCatedra: cat.
cat := Anual crearAnual: 0305 con: 'Comunicación de Datos'                  con: 70 con: 20303 con: 'Curricular' con: 3.  car agregarCatedra: cat.
cat := Anual crearAnual: 0332 con: 'Comunicación Profesional (Elec.)'       con: 40 con: 20304 con: 'Electiva'   con: 3.  car agregarCatedra: cat.
cat := Anual crearAnual: 0304 con: 'Desarrollo de Software'                 con: 80 con: 20305 con: 'Curricular' con: 3.  car agregarCatedra: cat.
cat := Anual crearAnual: 0307 con: 'Diseño de Sistemas de Información'      con: 80 con: 20306 con: 'Curricular' con: 3.  car agregarCatedra: cat.
cat := Anual crearAnual: 0301 con: 'Probabilidad y Estadística'             con: 70 con: 20307 con: 'Curricular' con: 3.  car agregarCatedra: cat.

"Cuatrimestrales"
cat := Cuatrimestral crearCuatrimestral: 0331 con: 'Responsabilidad Social e Institucional'      con: 30 con: 20308 con: 'Curricular' con: 3 con: 'Primero'.  car agregarCatedra: cat.
cat := Cuatrimestral crearCuatrimestral: 0330 con: 'Tecnología y Gestión Web (Elec.)'            con: 40 con: 20309 con: 'Electiva'   con: 3 con: 'Primero'.  car agregarCatedra: cat.
cat := Cuatrimestral crearCuatrimestral: 0302 con: 'Economía'                                     con: 40 con: 20310 con: 'Curricular' con: 3 con: 'Segundo'.  car agregarCatedra: cat.
cat := Cuatrimestral crearCuatrimestral: 0538 con: 'Sistemas de Tiempo Real (Elec.)'              con: 50 con: 20311 con: 'Electiva'   con: 3 con: 'Segundo'.  car agregarCatedra: cat.
cat := Cuatrimestral crearCuatrimestral: 0329 con: 'Sistemas de Transmisión Inalámbricos (Elec.)' con: 50 con: 20312 con: 'Electiva'   con: 3 con: 'Segundo'.  car agregarCatedra: cat.

"--- 4º año (Nivel 4) ---"
"Anuales"
cat := Anual crearAnual: 0407 con: 'Administración de Sistemas de Información' con: 70 con: 20401 con: 'Curricular' con: 4.  car agregarCatedra: cat.
cat := Anual crearAnual: 0308 con: 'Seminario Integrador'                       con: 40 con: 20402 con: 'Curricular' con: 4.  car agregarCatedra: cat.

"1er cuatrimestre"
cat := Cuatrimestral crearCuatrimestral: 0426 con: 'Aplicaciones Móviles (Elec.)'                         con: 40 con: 20403 con: 'Electiva'   con: 4 con: 'Primero'.  car agregarCatedra: cat.
cat := Cuatrimestral crearCuatrimestral: 0410 con: 'Desarrollo de Aplicaciones Móviles (Elec.)'          con: 40 con: 20404 con: 'Electiva'   con: 4 con: 'Primero'.  car agregarCatedra: cat.
cat := Cuatrimestral crearCuatrimestral: 0423 con: 'Diseño Inclusivo para Usuarios con Discapacidad'     con: 30 con: 20405 con: 'Curricular' con: 4 con: 'Primero'.  car agregarCatedra: cat.
cat := Cuatrimestral crearCuatrimestral: 0402 con: 'Ingeniería y Calidad de Software'                     con: 70 con: 20406 con: 'Curricular' con: 4 con: 'Primero'.  car agregarCatedra: cat.
cat := Cuatrimestral crearCuatrimestral: 0404 con: 'Investigación Operativa'                              con: 60 con: 20407 con: 'Curricular' con: 4 con: 'Primero'.  car agregarCatedra: cat.
cat := Cuatrimestral crearCuatrimestral: 0409 con: 'Programación Concurrente (Elec.)'                     con: 50 con: 20408 con: 'Electiva'   con: 4 con: 'Primero'.  car agregarCatedra: cat.
cat := Cuatrimestral crearCuatrimestral: 0405 con: 'Simulación'                                           con: 60 con: 20409 con: 'Curricular' con: 4 con: 'Primero'.  car agregarCatedra: cat.
cat := Cuatrimestral crearCuatrimestral: 0421 con: 'Tecnologías para la Explotación de la Información'    con: 50 con: 20410 con: 'Curricular' con: 4 con: 'Primero'.  car agregarCatedra: cat.

"2º cuatrimestre"
cat := Cuatrimestral crearCuatrimestral: 0425 con: 'Administración de Bases de Datos (Elec.)'             con: 50 con: 20411 con: 'Electiva'   con: 4 con: 'Segundo'.  car agregarCatedra: cat.
cat := Cuatrimestral crearCuatrimestral: 0422 con: 'Desarrollo de Software Cloud (Elec.)'                 con: 40 con: 20412 con: 'Electiva'   con: 4 con: 'Segundo'.  car agregarCatedra: cat.
cat := Cuatrimestral crearCuatrimestral: 0401 con: 'Legislación'                                          con: 30 con: 20413 con: 'Curricular' con: 4 con: 'Segundo'.  car agregarCatedra: cat.
cat := Cuatrimestral crearCuatrimestral: 0420 con: 'Metodologías de la Investigación (Elec.)'             con: 40 con: 20414 con: 'Electiva'   con: 4 con: 'Segundo'.  car agregarCatedra: cat.
cat := Cuatrimestral crearCuatrimestral: 0424 con: 'Metodologías Ágiles (Elec.)'                          con: 40 con: 20415 con: 'Electiva'   con: 4 con: 'Segundo'.  car agregarCatedra: cat.
cat := Cuatrimestral crearCuatrimestral: 0403 con: 'Redes de Datos'                                       con: 70 con: 20416 con: 'Curricular' con: 4 con: 'Segundo'.  car agregarCatedra: cat.
cat := Cuatrimestral crearCuatrimestral: 0427 con: 'Tecnologías de Interfaces Interactivas'               con: 40 con: 20417 con: 'Curricular' con: 4 con: 'Segundo'.  car agregarCatedra: cat.
cat := Cuatrimestral crearCuatrimestral: 0406 con: 'Tecnologías para la Automatización'                   con: 50 con: 20418 con: 'Curricular' con: 4 con: 'Segundo'.  car agregarCatedra: cat.

"--- 5º año (Nivel 5) ---"
"Anuales"
cat := Anual crearAnual: 0543 con: 'Emprendedorismo (Elec.)'                          con: 40 con: 20501 con: 'Electiva'   con: 5.  car agregarCatedra: cat.
cat := Anual crearAnual: 0526 con: 'Formación en Tecnología en Áreas de Ingeniería'   con: 60 con: 20502 con: 'Curricular' con: 5.  car agregarCatedra: cat.
cat := Anual crearAnual: 0542 con: 'Ingeniería en Calidad (Elec.)'                    con: 50 con: 20503 con: 'Electiva'   con: 5.  car agregarCatedra: cat.
cat := Anual crearAnual: 0536 con: 'Ingeniería y Desarrollo (Elec.)'                  con: 50 con: 20504 con: 'Electiva'   con: 5.  car agregarCatedra: cat.
cat := Anual crearAnual: 0537 con: 'Internetworking (Elec.)'                           con: 60 con: 20505 con: 'Electiva'   con: 5.  car agregarCatedra: cat.
cat := Anual crearAnual: 0506 con: 'Proyecto Final'                                    con: 120 con: 20506 con: 'Curricular' con: 5. car agregarCatedra: cat.
cat := Anual crearAnual: 0507 con: 'Práctica Profesional Supervisada'                 con: 200 con: 20507 con: 'Curricular' con: 5. car agregarCatedra: cat.
cat := Anual crearAnual: 0503 con: 'Sistemas de Gestión'                              con: 70 con: 20508 con: 'Curricular'  con: 5. car agregarCatedra: cat.

"1er cuatrimestre"
cat := Cuatrimestral crearCuatrimestral: 0502 con: 'Ciencia de Datos'                                          con: 60 con: 20509 con: 'Curricular' con: 5 con: 'Primero'.  car agregarCatedra: cat.
cat := Cuatrimestral crearCuatrimestral: 0504 con: 'Gestión Gerencial'                                         con: 50 con: 20510 con: 'Curricular' con: 5 con: 'Primero'.  car agregarCatedra: cat.
cat := Cuatrimestral crearCuatrimestral: 0501 con: 'Inteligencia Artificial'                                   con: 60 con: 20511 con: 'Curricular' con: 5 con: 'Primero'.  car agregarCatedra: cat.
cat := Cuatrimestral crearCuatrimestral: 0540 con: 'Protocolos y Seguridad en Redes Inalámbricas'              con: 50 con: 20512 con: 'Curricular' con: 5 con: 'Primero'.  car agregarCatedra: cat.
cat := Cuatrimestral crearCuatrimestral: 0541 con: 'Tecnologías de la Información para la Gestión'             con: 50 con: 20513 con: 'Curricular' con: 5 con: 'Primero'.  car agregarCatedra: cat.

"2º cuatrimestre"
cat := Cuatrimestral crearCuatrimestral: 0604 con: 'Gestión Operativa y Seguridad en Redes'                    con: 50 con: 20514 con: 'Curricular' con: 5 con: 'Segundo'.  car agregarCatedra: cat.
cat := Cuatrimestral crearCuatrimestral: 0505 con: 'Seguridad en los Sistemas de Información'                  con: 60 con: 20515 con: 'Curricular' con: 5 con: 'Segundo'.  car agregarCatedra: cat.
cat := Cuatrimestral crearCuatrimestral: 0539 con: 'Sistemas en la Industria 4.0 (Elec.)'                      con: 50 con: 20516 con: 'Electiva'   con: 5 con: 'Segundo'.  car agregarCatedra: cat.

"car inspect."

"---------------------------------------------------------------------Carga de catedras.-----------------------------------------------------------------------"
flag2:=true.
[ flag2 ] whileTrue: [
	options := #(
		'Cargar Catedra' 
		'Modificar Catedra' 
		'Eliminar Catedra' 
		'Listar Catedras' 
		'Mostrar Electivas' 
		'Eliminar Electiva' 
		'Mostrar Catedras 3er Año' 
		'Calcular Horas Totales' 
		'Guardar Horas Por Tipo' 
		'Cerrar Programa'
	).
	select := ChoicePrompter choices: options caption: 'Seleccione una opción'.
	Transcript clear.
	Transcript show: select displayString .
	select ifNil: [ flag2:= false.].
	(select = 'Cerrar Programa') ifTrue: [
		flag2:=false.
	].
	(select ='Cargar Catedra')ifTrue: [
		flag:=true.
		"Mientras flag sea true va a volver al while"
		[ flag ]whileTrue: [
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
			optionsCuatri:=#('Primero' 'Segundo' 'Ambos').
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
					options:=#(
							'Modificar Nombre' 
							'Modificar Carga Horaria'
							'Modificar Legajo de Docente a Cargo'
							'Modificar Tipo'
							'Modificar Nivel' 
							'Modificar Cuatrimestre'
					).
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
					optionsCuatri:=#('Primero' 'Segundo' 'Ambos').
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
    | col |
    col := car verTodos.
    (col isKindOf: Dictionary) ifTrue: [ col := col values ].

    (col isNil or: [col isEmpty])
        ifTrue: [ Transcript show: 'No hay catedras cargadas.'; cr ]
        ifFalse: [
            col do: [:cated |
                Transcript show: 'Nivel: ', (cated verNivel printString); cr.
                Transcript show: 'Codigo: ', (cated verCodigo printString); cr.
                Transcript show: 'Nombre: ', (cated verNombre); cr.
                Transcript show: 'Carga Horaria: ', (cated verCargaHoraria printString); cr.
                Transcript show: 'Tipo: ', (cated verTipo); cr.

                (cated isKindOf: Cuatrimestral) ifTrue: [
                    Transcript show: 'Cuatrimestre: ', (cated verCuatrimestral); cr.
                ].
                (cated isKindOf: Bimestral) ifTrue: [
                    Transcript show: 'Fecha de Inicio: ', (cated verFechaIni printString); cr.
                    Transcript show: 'Fecha de Finalización: ', (cated verFechaFin printString); cr.
                ].
                (cated isKindOf: Anual) ifTrue: [
                    Transcript show: 'Anual: Sí.'; cr.
                ].

                Transcript show: '------------------------------------'; cr.
            ].
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
	(select= 'Guardar Horas Por Tipo')ifTrue: [ Transcript show: 'Entró Horas Totales']."Aca termina guardar horas por tipo"

	].
