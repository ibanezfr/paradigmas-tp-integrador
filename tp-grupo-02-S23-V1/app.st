| nom cantMat cantNiv unaDisc cod nomCat cargaH leg tipo niv fechaIni fechaFin cuatri |
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
nom := 'Ingeniería en Sistemas de Información'.
"cantMat:= IntegerPrompter prompt: 'Ingrese la cantidad de materias de la carrera.' caption: 'Creando carrera.' ."
"cantNiv:= ChoicePrompter choices: (1 to: 5) caption: 'Ingrese la cantidad de niveles de la carrera.'."
"unaDisc:=(Prompter prompt: 'Ingrese la disciplina.' caption: 'Creando carrera.')asString capitalized."
cantNiv := 5.
unaDisc := 'Tecnologías de la Iformación'.
cantMat := 62.
car := Carrera
			crear: nom
			con: cantMat
			con: cantNiv
			con: unaDisc.
"MessageBox notify: 'Se creo la carrera con exito' caption: 'Creando carrera.'."

"---------------------------------------------------------------------------------------------------------------------------------------------------"
"**************** Pre-carga de materias****************"

"--- Nivel 1---"
cat := Anual
			crearAnual: 0106
			con: 'Algoritmos y Estructuras de Datos'
			con: 90
			con: 20101
			con: 'Curricular'
			con: 1.
car agregarCatedra: cat.
cat := Anual
			crearAnual: 0101
			con: 'Análisis Matemático I'
			con: 80
			con: 20102
			con: 'Curricular'
			con: 1.
car agregarCatedra: cat.
cat := Anual
			crearAnual: 0107
			con: 'Arquitectura de Computadoras'
			con: 70
			con: 20103
			con: 'Curricular'
			con: 1.
car agregarCatedra: cat.
cat := Anual
			crearAnual: 0103
			con: 'Física I'
			con: 60
			con: 20104
			con: 'Curricular'
			con: 1.
car agregarCatedra: cat.
cat := Anual
			crearAnual: 0104
			con: 'Inglés I'
			con: 30
			con: 20105
			con: 'Curricular'
			con: 1.
car agregarCatedra: cat.
cat := Anual
			crearAnual: 0105
			con: 'Lógica y Estructuras Discretas'
			con: 60
			con: 20106
			con: 'Curricular'
			con: 1.
car agregarCatedra: cat.
cat := Anual
			crearAnual: 0108
			con: 'Sistemas y Procesos de Negocio'
			con: 60
			con: 20107
			con: 'Curricular'
			con: 1.
car agregarCatedra: cat.
cat := Anual
			crearAnual: 0102
			con: 'Álgebra y Geometría Analítica'
			con: 80
			con: 20108
			con: 'Curricular'
			con: 1.
car agregarCatedra: cat.

"--- Nivel 2 ---"
"Anuales"
cat := Anual
			crearAnual: 0208
			con: 'Análisis de Sistemas de Información'
			con: 70
			con: 20201
			con: 'Curricular'
			con: 2.
car agregarCatedra: cat.
cat := Anual
			crearAnual: 0201
			con: 'Análisis Matemático II'
			con: 80
			con: 20202
			con: 'Curricular'
			con: 2.
car agregarCatedra: cat.
cat := Anual
			crearAnual: 0202
			con: 'Física II'
			con: 60
			con: 20203
			con: 'Curricular'
			con: 2.
car agregarCatedra: cat.
cat := Anual
			crearAnual: 0203
			con: 'Ingeniería y Sociedad'
			con: 40
			con: 20204
			con: 'Curricular'
			con: 2.
car agregarCatedra: cat.
cat := Anual
			crearAnual: 0204
			con: 'Inglés II'
			con: 30
			con: 20205
			con: 'Curricular'
			con: 2.
car agregarCatedra: cat.
cat := Anual
			crearAnual: 0207
			con: 'Sistemas Operativos'
			con: 70
			con: 20206
			con: 'Curricular'
			con: 2.
car agregarCatedra: cat.

"Cuatrimestrales"
cat := Cuatrimestral
			crearCuatrimestral: 0205
			con: 'Sintaxis y Semántica de los Lenguajes'
			con: 50
			con: 20207
			con: 'Curricular'
			con: 2
			con: 'Primero'.
car agregarCatedra: cat.
cat := Cuatrimestral
			crearCuatrimestral: 0206
			con: 'Paradigmas de Programación'
			con: 60
			con: 20208
			con: 'Curricular'
			con: 2
			con: 'Segundo'.
car agregarCatedra: cat.

"--- 3º año (Nivel 3) ---"
"Anuales"
cat := Anual
			crearAnual: 0306
			con: 'Análisis Numérico'
			con: 60
			con: 20301
			con: 'Curricular'
			con: 3.
car agregarCatedra: cat.
cat := Anual
			crearAnual: 0303
			con: 'Bases de Datos'
			con: 80
			con: 20302
			con: 'Curricular'
			con: 3.
car agregarCatedra: cat.
cat := Anual
			crearAnual: 0305
			con: 'Comunicación de Datos'
			con: 70
			con: 20303
			con: 'Curricular'
			con: 3.
car agregarCatedra: cat.
cat := Anual
			crearAnual: 0332
			con: 'Comunicación Profesional (Elec.)'
			con: 40
			con: 20304
			con: 'Electiva'
			con: 3.
car agregarCatedra: cat.
cat := Anual
			crearAnual: 0304
			con: 'Desarrollo de Software'
			con: 80
			con: 20305
			con: 'Curricular'
			con: 3.
car agregarCatedra: cat.
cat := Anual
			crearAnual: 0307
			con: 'Diseño de Sistemas de Información'
			con: 80
			con: 20306
			con: 'Curricular'
			con: 3.
car agregarCatedra: cat.
cat := Anual
			crearAnual: 0301
			con: 'Probabilidad y Estadística'
			con: 70
			con: 20307
			con: 'Curricular'
			con: 3.
car agregarCatedra: cat.

"Cuatrimestrales"
cat := Cuatrimestral
			crearCuatrimestral: 0331
			con: 'Responsabilidad Social e Institucional'
			con: 30
			con: 20308
			con: 'Curricular'
			con: 3
			con: 'Primero'.
car agregarCatedra: cat.
cat := Cuatrimestral
			crearCuatrimestral: 0330
			con: 'Tecnología y Gestión Web (Elec.)'
			con: 40
			con: 20309
			con: 'Electiva'
			con: 3
			con: 'Primero'.
car agregarCatedra: cat.
cat := Cuatrimestral
			crearCuatrimestral: 0302
			con: 'Economía'
			con: 40
			con: 20310
			con: 'Curricular'
			con: 3
			con: 'Segundo'.
car agregarCatedra: cat.
cat := Cuatrimestral
			crearCuatrimestral: 0538
			con: 'Sistemas de Tiempo Real (Elec.)'
			con: 50
			con: 20311
			con: 'Electiva'
			con: 3
			con: 'Segundo'.
car agregarCatedra: cat.
cat := Cuatrimestral
			crearCuatrimestral: 0329
			con: 'Sistemas de Transmisión Inalámbricos (Elec.)'
			con: 50
			con: 20312
			con: 'Electiva'
			con: 3
			con: 'Segundo'.
car agregarCatedra: cat.

"--- 4º año (Nivel 4) ---"
"Anuales"
cat := Anual
			crearAnual: 0407
			con: 'Administración de Sistemas de Información'
			con: 70
			con: 20401
			con: 'Curricular'
			con: 4.
car agregarCatedra: cat.
cat := Anual
			crearAnual: 0308
			con: 'Seminario Integrador'
			con: 40
			con: 20402
			con: 'Curricular'
			con: 4.
car agregarCatedra: cat.

"1er cuatrimestre"
cat := Cuatrimestral
			crearCuatrimestral: 0426
			con: 'Aplicaciones Móviles (Elec.)'
			con: 40
			con: 20403
			con: 'Electiva'
			con: 4
			con: 'Primero'.
car agregarCatedra: cat.
cat := Cuatrimestral
			crearCuatrimestral: 0410
			con: 'Desarrollo de Aplicaciones Móviles (Elec.)'
			con: 40
			con: 20404
			con: 'Electiva'
			con: 4
			con: 'Primero'.
car agregarCatedra: cat.
cat := Cuatrimestral
			crearCuatrimestral: 0423
			con: 'Diseño Inclusivo para Usuarios con Discapacidad'
			con: 30
			con: 20405
			con: 'Curricular'
			con: 4
			con: 'Primero'.
car agregarCatedra: cat.
cat := Cuatrimestral
			crearCuatrimestral: 0402
			con: 'Ingeniería y Calidad de Software'
			con: 70
			con: 20406
			con: 'Curricular'
			con: 4
			con: 'Primero'.
car agregarCatedra: cat.
cat := Cuatrimestral
			crearCuatrimestral: 0404
			con: 'Investigación Operativa'
			con: 60
			con: 20407
			con: 'Curricular'
			con: 4
			con: 'Primero'.
car agregarCatedra: cat.
cat := Cuatrimestral
			crearCuatrimestral: 0409
			con: 'Programación Concurrente (Elec.)'
			con: 50
			con: 20408
			con: 'Electiva'
			con: 4
			con: 'Primero'.
car agregarCatedra: cat.
cat := Cuatrimestral
			crearCuatrimestral: 0405
			con: 'Simulación'
			con: 60
			con: 20409
			con: 'Curricular'
			con: 4
			con: 'Primero'.
car agregarCatedra: cat.
cat := Cuatrimestral
			crearCuatrimestral: 0421
			con: 'Tecnologías para la Explotación de la Información'
			con: 50
			con: 20410
			con: 'Curricular'
			con: 4
			con: 'Primero'.
car agregarCatedra: cat.

"2º cuatrimestre"
cat := Cuatrimestral
			crearCuatrimestral: 0425
			con: 'Administración de Bases de Datos (Elec.)'
			con: 50
			con: 20411
			con: 'Electiva'
			con: 4
			con: 'Segundo'.
car agregarCatedra: cat.
cat := Cuatrimestral
			crearCuatrimestral: 0422
			con: 'Desarrollo de Software Cloud (Elec.)'
			con: 40
			con: 20412
			con: 'Electiva'
			con: 4
			con: 'Segundo'.
car agregarCatedra: cat.
cat := Cuatrimestral
			crearCuatrimestral: 0401
			con: 'Legislación'
			con: 30
			con: 20413
			con: 'Curricular'
			con: 4
			con: 'Segundo'.
car agregarCatedra: cat.
cat := Cuatrimestral
			crearCuatrimestral: 0420
			con: 'Metodologías de la Investigación (Elec.)'
			con: 40
			con: 20414
			con: 'Electiva'
			con: 4
			con: 'Segundo'.
car agregarCatedra: cat.
cat := Cuatrimestral
			crearCuatrimestral: 0424
			con: 'Metodologías Ágiles (Elec.)'
			con: 40
			con: 20415
			con: 'Electiva'
			con: 4
			con: 'Segundo'.
car agregarCatedra: cat.
cat := Cuatrimestral
			crearCuatrimestral: 0403
			con: 'Redes de Datos'
			con: 70
			con: 20416
			con: 'Curricular'
			con: 4
			con: 'Segundo'.
car agregarCatedra: cat.
cat := Cuatrimestral
			crearCuatrimestral: 0427
			con: 'Tecnologías de Interfaces Interactivas'
			con: 40
			con: 20417
			con: 'Curricular'
			con: 4
			con: 'Segundo'.
car agregarCatedra: cat.
cat := Cuatrimestral
			crearCuatrimestral: 0406
			con: 'Tecnologías para la Automatización'
			con: 50
			con: 20418
			con: 'Curricular'
			con: 4
			con: 'Segundo'.
car agregarCatedra: cat.

"--- 5º año (Nivel 5) ---"
"Anuales"
cat := Anual
			crearAnual: 0543
			con: 'Emprendedorismo (Elec.)'
			con: 40
			con: 20501
			con: 'Electiva'
			con: 5.
car agregarCatedra: cat.
cat := Anual
			crearAnual: 0526
			con: 'Formación en Tecnología en Áreas de Ingeniería'
			con: 60
			con: 20502
			con: 'Curricular'
			con: 5.
car agregarCatedra: cat.
cat := Anual
			crearAnual: 0542
			con: 'Ingeniería en Calidad (Elec.)'
			con: 50
			con: 20503
			con: 'Electiva'
			con: 5.
car agregarCatedra: cat.
cat := Anual
			crearAnual: 0536
			con: 'Ingeniería y Desarrollo (Elec.)'
			con: 50
			con: 20504
			con: 'Electiva'
			con: 5.
car agregarCatedra: cat.
cat := Anual
			crearAnual: 0537
			con: 'Internetworking (Elec.)'
			con: 60
			con: 20505
			con: 'Electiva'
			con: 5.
car agregarCatedra: cat.
cat := Anual
			crearAnual: 0506
			con: 'Proyecto Final'
			con: 120
			con: 20506
			con: 'Curricular'
			con: 5.
car agregarCatedra: cat.
cat := Anual
			crearAnual: 0507
			con: 'Práctica Profesional Supervisada'
			con: 200
			con: 20507
			con: 'Curricular'
			con: 5.
car agregarCatedra: cat.
cat := Anual
			crearAnual: 0503
			con: 'Sistemas de Gestión'
			con: 70
			con: 20508
			con: 'Curricular'
			con: 5.
car agregarCatedra: cat.

"1er cuatrimestre"
cat := Cuatrimestral
			crearCuatrimestral: 0502
			con: 'Ciencia de Datos'
			con: 60
			con: 20509
			con: 'Curricular'
			con: 5
			con: 'Primero'.
car agregarCatedra: cat.
cat := Cuatrimestral
			crearCuatrimestral: 0504
			con: 'Gestión Gerencial'
			con: 50
			con: 20510
			con: 'Curricular'
			con: 5
			con: 'Primero'.
car agregarCatedra: cat.
cat := Cuatrimestral
			crearCuatrimestral: 0501
			con: 'Inteligencia Artificial'
			con: 60
			con: 20511
			con: 'Curricular'
			con: 5
			con: 'Primero'.
car agregarCatedra: cat.
cat := Cuatrimestral
			crearCuatrimestral: 0540
			con: 'Protocolos y Seguridad en Redes Inalámbricas'
			con: 50
			con: 20512
			con: 'Curricular'
			con: 5
			con: 'Primero'.
car agregarCatedra: cat.
cat := Cuatrimestral
			crearCuatrimestral: 0541
			con: 'Tecnologías de la Información para la Gestión'
			con: 50
			con: 20513
			con: 'Curricular'
			con: 5
			con: 'Primero'.
car agregarCatedra: cat.

"2º cuatrimestre"
cat := Cuatrimestral
			crearCuatrimestral: 0604
			con: 'Gestión Operativa y Seguridad en Redes'
			con: 50
			con: 20514
			con: 'Curricular'
			con: 5
			con: 'Segundo'.
car agregarCatedra: cat.
cat := Cuatrimestral
			crearCuatrimestral: 0505
			con: 'Seguridad en los Sistemas de Información'
			con: 60
			con: 20515
			con: 'Curricular'
			con: 5
			con: 'Segundo'.
car agregarCatedra: cat.
cat := Cuatrimestral
			crearCuatrimestral: 0539
			con: 'Sistemas en la Industria 4.0 (Elec.)'
			con: 50
			con: 20516
			con: 'Electiva'
			con: 5
			con: 'Segundo'.
car agregarCatedra: cat.

"car inspect."

"---------------------------------------------------------------------Carga de catedras.-----------------------------------------------------------------------"
Transcript clear.
flag2 := true.
[flag2] whileTrue: 
		[options := #('Cargar Catedra' 'Modificar Catedra' 'Eliminar Catedra' 'Listar TODAS las Cátedras' 'Listar las Electivas' 'Listar Cátedras del Título Intermedio' 'Calcular Horas Totales' 'Generar DICT de Horas Por Tipo' 'Cerrar Programa').
		select := ChoicePrompter choices: options caption: 'Seleccione una opción'.
		select ifNil: [flag2 := false].
		select = 'Cerrar Programa' ifTrue: [flag2 := false].
		select = 'Cargar Catedra'
			ifTrue: 
				[flag := true.
				[flag] whileTrue: 
						[| ok codStr nomStr cargaStr legStr nivStr selTipo selMod selCuatri |
						ok := true.
						codStr := IntegerPrompter prompt: 'Ingrese codigo de catedra.' caption: 'Carga de catedras.'.
						"TODO: Validar que el código no exista"

						codStr ifNil: [ok := false] ifNotNil: [cod := codStr].
						ok
							ifTrue: 
								[valido := false.
								[valido] whileFalse: 
										[nomStr := Prompter prompt: 'Ingrese el nombre de la cátedra.' caption: 'Carga de cátedras.'.
										nomStr
											ifNil: 
												[ok := false.	"Cancel"
												valido := true]
											ifNotNil: 
												[(nomStr isEmpty or: [nomStr trimBlanks isEmpty])
													ifTrue: [MessageBox notify: 'El nombre no puede estar vacío.' caption: 'Dato obligatorio']
													ifFalse: 
														[nomCat := nomStr capitalized.
														valido := true]]]].
						ok
							ifTrue: 
								[cargaStr := IntegerPrompter prompt: 'Ingrese la carga horaria de la catedra.'
											caption: 'Carga de catedras.'.
								cargaStr ifNil: [ok := false] ifNotNil: [cargaH := cargaStr]].
						ok
							ifTrue: 
								[selTipo := ChoicePrompter choices: #('Curricular' 'Electiva') caption: 'Tipo de catedra'.
								selTipo ifNil: [ok := false] ifNotNil: [tipo := selTipo]].
						ok
							ifTrue: 
								[legStr := IntegerPrompter prompt: 'Ingrese el legajo del docente a cargo.'
											caption: 'Carga de catedras.'.
								legStr ifNil: [ok := false] ifNotNil: [leg := legStr]].
						ok
							ifTrue: 
								[nivStr := ChoicePrompter choices: (1 to: 5) caption: 'Ingrese el nivel (1-5).'.
								nivStr ifNil: [ok := false] ifNotNil: [niv := nivStr]].
						ok
							ifTrue: 
								[selMod := ChoicePrompter choices: #('Bimestral' 'Cuatrimestral' 'Anual') caption: 'Modalidad'.
								selMod
									ifNil: [ok := false]
									ifNotNil: 
										[selMod = 'Bimestral'
											ifTrue: 
												[| valido tIni tFin |
												valido := false.

												"Pedir fecha de inicio hasta que sea válida o Cancel"
												[valido not] whileTrue: 
														[tIni := Prompter prompt: 'Ingrese FECHA DE INICIO (dd/mm/yyyy)'.
														tIni
															ifNil: 
																[ok := false.
																valido := true].
														ok
															ifTrue: 
																["Inicio"
																fechaIni := [Date fromString: tIni] on: Error do: [:ex | nil].
																fechaIni
																	ifNil: [MessageBox notify: 'Formato inválido. Ejemplo: 05/11/2025' caption: 'Fecha incorrecta']
																	ifNotNil: [valido := true]]].
												ok
													ifTrue: 
														[valido := false.
														"Pedir fecha de fin hasta que sea válida, posterior a inicio, o Cancel"
														[valido not] whileTrue: 
																[tFin := Prompter prompt: 'Ingrese FECHA DE FIN (dd/mm/yyyy)'.
																tFin
																	ifNil: 
																		[ok := false.
																		valido := true].
																ok
																	ifTrue: 
																		["Fin"
																		fechaFin := [Date fromString: tFin] on: Error do: [:ex | nil].
																		fechaFin
																			ifNil: [MessageBox notify: 'Formato inválido. Ejemplo: 20/12/2025' caption: 'Fecha incorrecta']
																			ifNotNil: 
																				[fechaFin < fechaIni
																					ifTrue: 
																						[MessageBox notify: 'La fecha de fin no puede ser anterior a la de inicio.'
																							caption: 'Fecha incorrecta']
																					ifFalse: [valido := true]]]]].
												ok
													ifTrue: 
														[cat := Bimestral
																	crearBimestral: cod
																	con: nomCat
																	con: cargaH
																	con: leg
																	con: tipo
																	con: niv
																	con: fechaIni
																	con: fechaFin]].
										selMod = 'Cuatrimestral'
											ifTrue: 
												[selCuatri := ChoicePrompter choices: #('Primero' 'Segundo' 'Ambos') caption: 'Cuatrimestre'.
												selCuatri
													ifNil: [ok := false]
													ifNotNil: 
														[cuatri := selCuatri.
														cat := Cuatrimestral
																	crearCuatrimestral: cod
																	con: nomCat
																	con: cargaH
																	con: leg
																	con: tipo
																	con: niv
																	con: cuatri]].
														selMod = 'Anual'
											ifTrue: 
												[cat := Anual
															crearAnual: cod
															con: nomCat
															con: cargaH
															con: leg
															con: tipo
															con: niv]]].
						ok
							ifTrue: 
								[car agregarCatedra: cat.
								car modificarCantMaterias: (car verCantMaterias + 1).
								flag := MessageBox confirm: '¿Desea seguir cargando catedras?' caption: 'Carga de catedras']
							ifFalse: 
								["Cancel en cualquier paso: salir de la carga"
								flag := false]]].	"Aca termina el Cargar Catedra"
		select = 'Modificar Catedra'
			ifTrue: 
				[seguir := true.
				[seguir] whileTrue: 
						[| ok codStr col cat opciones sel nomStr cargaStr legaStr nivStr tipoSel cuatriSel dIni mIni dFin mFin nuevaFechaIni nuevaFechaFin |
						ok := true.

						"1) Código de cátedra"
						"codStr := Prompter prompt: 'Ingrese el codigo de la catedra a modificar.'"
						codStr := IntegerPrompter prompt: 'Ingrese el codigo de la catedra a modificar.'
									caption: 'Modificar Catedra.'.
						codStr
							ifNil: [seguir := false]
							ifNotNil: 
								[col := car verTodos.
								(col isKindOf: Dictionary) ifTrue: [col := col values].
								cat := col detect: [:c | c verCodigo = codStr ] ifNone: [nil].
								cat
									ifNil: 
										[MessageBox error: 'La catedra no existe.'.
										ok := false].
								ok
									ifTrue: 
										["2) Menú según tipo concreto"
										opciones := #('Modificar Nombre' 'Modificar Carga Horaria' 'Modificar Legajo de Docente a Cargo' 'Modificar Tipo' 'Modificar Nivel').
										(cat isKindOf: Cuatrimestral) ifTrue: [opciones := opciones copyWith: 'Modificar Cuatrimestre'].
										(cat isKindOf: Bimestral) ifTrue: [opciones := opciones copyWith: 'Modificar Fecha Bimestral'].
										(cat respondsTo: #verAnual) ifTrue: [opciones := opciones copyWith: 'Modificar Anual'].
										sel := ChoicePrompter choices: opciones caption: 'Seleccione una opción'.
										sel
											ifNil: [ok := false]
											ifNotNil: 
												[sel = 'Modificar Nombre'
													ifTrue: 
														[nomStr := Prompter prompt: 'Ingrese el nuevo nombre.' caption: 'Modificar Nombre.'.
														nomStr
															ifNil: [ok := false]
															ifNotNil: 
																[cat modNombre: nomStr capitalized.
																MessageBox notify: 'Nombre actualizado.' caption: 'OK']].
												sel = 'Modificar Carga Horaria'
													ifTrue: 
														["cargaStr := Prompter prompt: 'Nueva carga horaria.' caption: 'Modificar Carga Horaria.'."
														cargaStr := IntegerPrompter prompt: 'Ingrese nueva carga horaria.' caption: 'Modificar Carga Horaria.'
														cargaStr
															ifNil: [ok := false]
															ifNotNil: 
																[cat modCargaHoraria: cargaStr.
																MessageBox notify: 'Carga horaria actualizada.' caption: 'OK']].
												sel = 'Modificar Legajo de Docente a Cargo'
													ifTrue: 
														[legaStr := Prompter prompt: 'Nuevo legajo.' caption: 'Modificar Legajo'.
														legaStr
															ifNil: [ok := false]
															ifNotNil: 
																[cat modLegajo: legaStr asNumber.
																MessageBox notify: 'Legajo actualizado.' caption: 'OK']].
												sel = 'Modificar Tipo'
													ifTrue: 
														[tipoSel := ChoicePrompter choices: #('Curricular' 'Electiva') caption: 'Tipo'.
														tipoSel
															ifNil: [ok := false]
															ifNotNil: 
																[cat modTipo: tipoSel.
																MessageBox notify: 'Tipo actualizado.' caption: 'OK']].
												sel = 'Modificar Nivel'
													ifTrue: 
														[nivStr := Prompter prompt: 'Nuevo nivel (1-5).' caption: 'Modificar Nivel'.
														nivStr
															ifNil: [ok := false]
															ifNotNil: 
																[cat modNivel: nivStr asNumber.
																MessageBox notify: 'Nivel actualizado.' caption: 'OK']].
												sel = 'Modificar Cuatrimestre'
													ifTrue: 
														[(cat isKindOf: Cuatrimestral)
															ifTrue: 
																[cuatriSel := ChoicePrompter choices: #('Primero' 'Segundo' 'Ambos') caption: 'Cuatrimestre'.
																cuatriSel
																	ifNil: [ok := false]
																	ifNotNil: 
																		[cat modCuatrimestre: cuatriSel.
																		MessageBox notify: 'Cuatrimestre actualizado.' caption: 'OK']]
															ifFalse: 
																[MessageBox error: 'La catedra no es cuatrimestral.'.
																ok := false]].
												sel = 'Modificar Fecha Bimestral'
													ifTrue: 
														[(cat isKindOf: Bimestral)
															ifTrue: 
																[dIni := Prompter prompt: 'Día inicio (1-31).' caption: 'Bimestral'.
																dIni
																	ifNil: [ok := false]
																	ifNotNil: 
																		[mIni := Prompter prompt: 'Mes inicio (1-12).' caption: 'Bimestral'.
																		mIni
																			ifNil: [ok := false]
																			ifNotNil: 
																				[nuevaFechaIni := Date
																							year: 2025
																							month: mIni asNumber
																							day: dIni asNumber.
																				dFin := Prompter prompt: 'Día fin (1-31).' caption: 'Bimestral'.
																				dFin
																					ifNil: [ok := false]
																					ifNotNil: 
																						[mFin := Prompter prompt: 'Mes fin (1-12).' caption: 'Bimestral'.
																						mFin
																							ifNil: [ok := false]
																							ifNotNil: 
																								[nuevaFechaFin := Date
																											year: 2025
																											month: mFin asNumber
																											day: dFin asNumber.
																								cat modificarFechaIni: nuevaFechaIni.
																								cat modificarFechaFin: nuevaFechaFin.
																								MessageBox notify: 'Fechas actualizadas.' caption: 'OK']]]]]
															ifFalse: 
																[MessageBox error: 'La catedra no es bimestral.'.
																ok := false]].
												sel = 'Modificar Anual'
													ifTrue: 
														[(cat respondsTo: #modAnual:)
															ifTrue: 
																[| anSel |
																anSel := ChoicePrompter choices: #('Si' 'No') caption: '¿Es anual?'.
																anSel
																	ifNil: [ok := false]
																	ifNotNil: 
																		[cat modAnual: anSel = 'Si'.
																		MessageBox notify: 'Flag anual actualizado.' caption: 'OK']]
															ifFalse: 
																[MessageBox error: 'La catedra no soporta el flag anual.'.
																ok := false]]]]].
						ok
							ifTrue: 
								[seguir := MessageBox confirm: '¿Desea seguir modificando catedras?' caption: 'Modificar Catedras']
							ifFalse: [seguir := false]]].	"Aca termina el Modificar Catedra"
		select = 'Eliminar Catedra'
			ifTrue: 
				[| codStr col cat |
				c := nil.

				"Pedir código; si Cancel, salir"
				codStr := Prompter prompt: 'Ingrese el codigo de la catedra a Eliminar.'
							caption: 'Eliminar Catedra.'.
				codStr ifNil: [^self].	"canceló"

				
				col := car verTodos.

				"Agarra el primer objeto de la coleccion que coincida con el codigo"
				cat := col detect: [:cated | cated verCodigo = codStr asNumber] ifNone: [nil].
				cat isNil
					ifTrue: [MessageBox error: 'La catedra no existe.']
					ifFalse: 
						[car eliminarCatedra: cat.
						car modificarCantMaterias: (car verCantMaterias - 1).
						MessageBox notify: 'Se elimino con exito la catedra.' caption: 'Eliminar Catedra.']].	"Aca termina Eliminar Catedra"

		select = 'Listar TODAS las Cátedras'
			ifTrue: 
				[| col |
				col := car verTodos.
				(col isKindOf: Dictionary) ifTrue: [col := col values].
				(col isNil or: [col isEmpty])
					ifTrue: 
						[Transcript
							show: 'No hay catedras cargadas.';
							cr]
					ifFalse: 
						[col do: 
								[:cated |
								Transcript
									show: 'Nivel: ' , cated verNivel printString;
									cr.
								Transcript
									show: 'Codigo: ' , cated verCodigo printString;
									cr.
								Transcript
									show: 'Nombre: ' , cated verNombre;
									cr.
								Transcript
									show: 'Legajo del Profesor: ' , cated verLegajo printString;
									cr.
								Transcript
									show: 'Carga Horaria: ' , cated verCargaHoraria printString;
									cr.
								Transcript
									show: 'Tipo: ' , cated verTipo;
									cr.
								(cated isKindOf: Cuatrimestral)
									ifTrue: 
										[Transcript
											show: 'Cuatrimestre: ' , cated verCuatrimestral;
											cr].
								(cated isKindOf: Bimestral)
									ifTrue: 
										[Transcript
											show: 'Fecha de Inicio: ' , cated verFechaIni printString;
											cr.
										Transcript
											show: 'Fecha de Finalización: ' , cated verFechaFin printString;
											cr].
								(cated isKindOf: Anual)
									ifTrue: 
										[Transcript
											show: 'Anual: Sí.';
											cr].
								Transcript
									show: '------------------------------------';
									cr]]].	"Aca termina Listar Catedras"
		select = 'Listar las Electivas'
			ifTrue: 
				[materias := car verTodos.
				electivas := materias select: [:m | m verTipo = 'Electiva'].
				Transcript show: '-----Materias Electivas-----'.
				electivas do: 
						[:mat |
						Transcript
							show: 'Nivel: ' , mat verNivel printString;
							cr.
						Transcript
							show: 'Codigo: ' , mat verCodigo printString;
							cr.
						Transcript
							show: 'Nombre' , mat verNombre;
							cr.
						Transcript
							show: 'Carga Horaria: ' , mat verCargaHoraria printString;
							cr.
						Transcript
							show: 'Legajo del Profesor: ' , mat verLegajo printString;
							cr.
						Transcript
							show: 'Tipo: ' , mat verTipo;
							cr.
						Transcript
							show: 'Nivel: ' , mat verNivel printString;
							cr.
						(mat isKindOf: Cuatrimestral)
							ifTrue: 
								[Transcript
									show: 'Cuatrimestre: ' , mat verCuatrimestral;
									cr].
						(mat isKindOf: Bimestral)
							ifTrue: 
								[Transcript
									show: 'Fecha de Inicio: ' , mat verFechaIni;
									cr.
								Transcript show: 'Fecha de Finalizacion: ' , mat verFechaFin].
						"(mat isKindOf: Anual )ifTrue: [
				Transcript show: 'Anual: Si.'.
			]."
						Transcript
							show: '--------------------------------------';
							cr]	"Aca termina Mostrar Electivas"].
		select = 'Listar Cátedras del Título Intermedio'
			ifTrue: 
				[| catedras max filtradas mat |
				Transcript clear.
				catedras := car verTodos.
				max := 3.
				filtradas := catedras reject: [:f | f verNivel > max].
				filtradas do: 
						[:g |
						Transcript
							show: 'Nivel: ' , g verNivel printString;
							cr.
						Transcript
							show: 'Codigo: ' , g verCodigo printString;
							cr.
						Transcript
							show: 'Nombre: ' , g verNombre;
							cr.
						Transcript
							show: 'Carga Horaria: ' , g verCargaHoraria printString;
							cr.
						Transcript
							show: 'Legajo del Profesor: ' , g verLegajo printString;
							cr.
						Transcript
							show: 'Tipo: ' , g verTipo;
							cr.
						(g isKindOf: Cuatrimestral)
							ifTrue: 
								[Transcript
									show: 'Cuatrimestre: ' , g verCuatrimestral printString;
									cr].
						(g isKindOf: Bimestral)
							ifTrue: 
								[Transcript
									show: 'Fecha de Inicio: ' , g verFechaIni printString;
									cr.
								Transcript
									show: 'Fecha de Finalización: ' , g verFechaFin printString;
									cr].
						(g isKindOf: Anual)
							ifTrue: 
								[Transcript
									show: 'Anual: Sí.';
									cr].
						Transcript
							show: '--------------------------------------';
							cr]].	"Aca termina Mostrar catedras 3er Año"
		select = 'Calcular Horas Totales'
			ifTrue: 
				[| catedras horasTotales |
				catedras := car verTodos.
				horasTotales := catedras inject: 0 into: [:sum :cated | sum + cated verCargaHoraria].
				Transcript clear.
				Transcript
					show: 'Horas Totales: ' , horasTotales printString;
					cr].	"Aca terminar calcular horas totales"
		select = 'Generar DICT de Horas Por Tipo'
			ifTrue: 
				[| catedras horasPorTipo tipo carga |
				Transcript clear.
				catedras := car verTodos.
				horasPorTipo := Dictionary new.
				catedras do: 
						[:c |
						carga := c verCargaHoraria.
						(c isKindOf: Anual)
							ifTrue: [tipo := 'Anual']
							ifFalse: 
								[(c isKindOf: Cuatrimestral)
									ifTrue: [tipo := 'Cuatrimestral']
									ifFalse: [(c isKindOf: Bimestral) ifTrue: [tipo := 'Bimestral'] ifFalse: [tipo := 'Otro']]].
						(horasPorTipo includesKey: tipo)
							ifTrue: [horasPorTipo at: tipo put: (horasPorTipo at: tipo) + carga]
							ifFalse: [horasPorTipo at: tipo put: carga]].
				horasPorTipo keysAndValuesDo: 
						[:tipoH :horasTotal |
						Transcript
							show: 'Tipo: ' , tipoH , ' - Horas totales: ' , horasTotal printString;
							cr]]	"Aca termina guardar horas por tipo"]	"Aca termina el while, otra vez_1"