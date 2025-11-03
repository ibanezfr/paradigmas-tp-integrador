|carrera catedra flag opc f nombre cantMat cantNiv unaDisc|
Transcript clear.
"==================== INICIO  TP Integrador ======================="
flag := 1.
opc := ChoicePrompter choices: #(
	'1. Cargar catedra'
	'2. Buscar cátedra por codigo (Modificar/Eliminar)'
	'3. Listar TODAS las cátedras'
	'4. Listar materias electivas (Agregar/Eliminar)'
	'5. Listar cátedrias de los primeros 3 niveles'
	'6. Calcular total horas de carrera y listar diccionario de cantidad de horas por tipo de cátedra'
	'0. Salir'
).
(opc first = $1) ifTrue: [ 
	f := true.
	[f = true ] whileTrue:[
	nombre := Prompter prompt: 'Ingrese nombre de la carrera'.
	cantMat := ChoicePrompter choices: (1 to: 10) caption: 'Eliga la cantidad de materias: '.
	cantNiv := ChoicePrompter choices: (1 to: 5) caption: 'Eliga la cantidad de niveles: '.
	unaDisc := Prompter prompt: 'Ingrese nombre de la disciplina'.
	carrera := Carrera crearCarrera: nombre con: cantMat con: cantNiv con: unaDisc.
	"Transcript inspect: carrera."
	f:= MessageBox confirm: 'Desea cargar más carreras?'.
	].] ifFalse: [( opc first = $2) ifTrue: [ Transcript show: opc first].].		
		( opc first = $3) ifTrue: [ Transcript show: opc first].
		( opc first = $4) ifTrue: [ Transcript show: opc first].
		( opc first = $5) ifTrue: [ Transcript show: opc first].
		( opc first = $6) ifTrue: [ Transcript show: opc first].
		( opc first = $0) ifTrue: [ Transcript show: opc first].


"==================== FIN  TP Integrador ========================"

"========================  Apuntes =========================="
"===== Colecciones  ====="
"OrderedCollection SortedCollection Array Dictionary"
Array add: "Agrega un elemento al final"
Array remove: "Elimina un objeto (ifAbsent:[ ])"
Array size: "Devuelve el tamaño"
Array at: "Devuelve el elemento en una posición"
Array at: put: "Agrega un elemento en una posición determinada"
Array isEmpty: "Valida si está vacía (Devuelve un booleano)"
Array includes: "Valida si la colección contiene determinado objeto"
Array asSet: "Convierte la colección a tipo set (sin repeticiones)"
Array ocurrencesOf: "Cuenta cuantas veces se repite un objeto"

"========== Iteradores de colección =========================="
"Dada una colección col se pueden utilizar los iteradores:
col do: [: el | bloque de código] liga el parámetro de bloque
“el” con cada elemento de la colección en el bloque de codigo."
col:= far verTodos.
col do:[:rem | MessageBox notify: rem verNombre].
"Se recorre toda la colección, rem toma el valor de cada objeto
de la colección en cada iteración"""


"=========  Estructuras de decisión ========"
"[condicion] ifTrue: [bloque].
[condicion] ifTrue: [bloque] ifFalse: [bloque].
[condicion] ifFalse: [bloque]."

a:=25.
b:=5.
(a<b) ifTrue: [MessageBox notify: ‘A es menor’] ifFalse [
(a=b) ifFalse: [MessageBox notify: ‘B es menor’]].

"========= Estructura de repetición Dinámica ============"
"[condicion] whileTrue: [bloque].
[condicion] whileFalse: [bloque]."

i:=1.
suma:=0.
[i <= 10] whileTrue: [suma := suma + i.
i:=i+1].

"============  Estructura de repetición Estática  =========="
"valorInicial to: valorFinal do:[:variableDelLoop | 'cuerpo del loop']."

suma:=0.
1 to: 10 do: [:i | suma := suma + i].

"============  Bloque - on: - do:  ====================="
"[ input := (Prompter prompt: 'Ingrese un número: ') asNumber  ] on: Exception do: [:ex | 
	MessageBox errorMsg: ex displayString caption: 'Error de conversion'.]."

MessageBox notify: input displayString.
Transcript show: input displayString.

"===========  Ingreso de números enteros =================="
num:= IntegerPrompter prompt: 'Ingrese un número entero'.
MessageBox notify: num displayString.

"===========  Menú. Clase Choice Prompter  ================"
opc:= ChoicePrompter choices: #(
	'1. Cargar carrera'
	'2. Buscar cátedra por codigo (Modificar/Eliminar)'
	'3. Listar TODAS las cátedras'
	'4. Listar materias electivas (Agregar/Eliminar)'
	'5. Listar cátedrias de los primeros 3 niveles'
	'6. Calcular total horas de carrera y listar diccionario de cantidad de horas por tipo de cátedra'
	'0. Salir'
).

"============  Ejemplo 2 de menú  ======================"
opc:= ChoicePrompter choices: (1 to: 10) caption: 'Elige el nivel:'.

"============  Ejemplo 3 de menú  ======================"
atributoModificar:= ChoicePrompter choices:
	#( 'Nombre' 'Codigo' 'Carga horaria' 'Legajo docente' 'Nivel' 'Tipo' 'Fecha de Inicio' 'Fecha de Finalización')
	caption: 'Selecione el atributo a modificar'.

"============  Clases Date, Time y DateAndTime  ============="
Transcript clear.
fecha:= Date year: 2025 month: 10 day: 31.
Transcript show: fecha printString; cr. " 31 October 2025"
Transcript show: 'La clase de fecha es ', fecha class displayString;cr;cr.

hora:= Time hours: 11 minutes: 20 seconds: 15.
Transcript show: hora printString; cr. "11:20:15"
Transcript show: 'La clase de hora es ', hora class displayString;cr;cr.

texto := Prompter prompt: 'Ingrese la fecha (formato: dd/mm/yyyy)'.
fecha := [ Date fromString: texto ] on: Error do: [nil].

Transcript clear.
miCumple := DateAndTime year: 1996 month: 7 day: 2 hour: 20 minute: 30 second: 0.
Transcript show: 'Mi cumpleaños  es: ', miCumple printString; cr.

"==============  Métodos getters de la clase DateAndTime  ==============="
Transcript clear.
ahora := DateAndTime now.
Transcript show: 'Año: ', ahora year printString; cr.
Transcript show: 'Mes: ', ahora month printString; cr.
Transcript show: 'Día: ', ahora day printString; cr.
Transcript show: 'Hour: ', ahora hour printString; cr.
Transcript show: 'Minutes: ', ahora minute printString; cr.
Transcript show: 'Seconds: ', ahora second printString; cr.

"=============  Comparación de fechas  ========================"
Transcript clear.
fecha1:= 	DateAndTime year: 2025 month: 10 day: 10.
fecha2 := DateAndTime year: 2025 month: 12 day: 10.

(fecha1 < fecha2) ifTrue: [Transcript show: 'fecha1 es antes de fecha2'].

"=============  Diferencias de fechas en días   ===================="
Transcript clear.
fecha1:= 	DateAndTime year: 2025 month: 10 day: 10.
fecha2 := DateAndTime year: 2025 month: 12 day: 10.

diferencia := fecha2 - fecha1. "resultado en días"

"==========  Sumar y restar días a una instancia de la clase Date  =========="
Transcript clear.
hoy := Date today.

"================= Sumar 3 días  ============================"
maniana := hoy addDays: 5.
Transcript show: 'Dentro de 5 días será: ', maniana printString; cr.

"=================  Restar 3 días  ============================"
ayer := hoy addDays: -3.
Transcript show: 'Hace 3 días fue: ',  ayer printString; cr.





































