|fecha1 fecha2 ahora miCumple texto fecha hora input num opc atributoModificar|
Transcript clear.

"Bloque - on: - do:"
[ input := (Prompter prompt: 'Ingrese un número: ') asNumber  ] on: Exception do: [:ex | 
	MessageBox errorMsg: ex displayString caption: 'Error de conversion'.
].

MessageBox notify: input displayString.
Transcript show: input displayString.

"Ingreso de números enteros"
num:= IntegerPrompter prompt: 'Ingrese un número entero'.
MessageBox notify: num displayString.

"Menú. Clase Choice Prompter"
opc:= ChoicePrompter choices: #(
	'1. Cargar carrera'
	'2. Buscar cátedra por codigo (Modificar/Eliminar)'
	'3. Listar TODAS las cátedras'
	'4. Listar materias electivas (Agregar/Eliminar)'
	'5. Listar cátedrias de los primeros 3 niveles'
	'6. Calcular total horas de carrera y listar diccionario de cantidad de horas por tipo de cátedra'
	'0. Salir'
).

"Ejemplo 2 de menú"
opc:= ChoicePrompter choices: (1 to: 10) caption: 'Elige el nivel:'.

"Ejemplo 3 de menú"
atributoModificar:= ChoicePrompter choices:
	#( 'Nombre' 'Codigo' 'Carga horaria' 'Legajo docente' 'Nivel' 'Tipo' 'Fecha de Inicio' 'Fecha de Finalización')
	caption: 'Selecione el atributo a modificar'.

"Clases Date, Time y DateAndTime"
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

"Métodos getters de la clase DateAndTime"
Transcript clear.
ahora := DateAndTime now.
Transcript show: 'Año: ', ahora year printString; cr.
Transcript show: 'Mes: ', ahora month printString; cr.
Transcript show: 'Día: ', ahora day printString; cr.
Transcript show: 'Hour: ', ahora hour printString; cr.
Transcript show: 'Minutes: ', ahora minute printString; cr.
Transcript show: 'Seconds: ', ahora second printString; cr.

"Comparación de fechas"
Transcript clear.
fecha1:= 	DateAndTime year: 2025 month: 10 day: 10.
fecha2 := DateAndTime year: 2025 month: 12 day: 10.

(fecha1 < fecha2) ifTrue: [Transcript show: 'fecha1 es antes de fecha2'].

"Diferencias de fechas en días"
Transcript clear.
fecha1:= 	DateAndTime year: 2025 month: 10 day: 10.
fecha2 := DateAndTime year: 2025 month: 12 day: 10.

diferencia := fecha2 - fecha1. "resultado en días"

"Sumar y restar días a una instancia de la clase Date"
Transcript clear.
hoy := Date today.

"Sumar 3 días"
maniana := hoy addDays: 5.
Transcript show: 'Dentro de 5 días será: ', maniana printString; cr.

"Restar 3 días"
ayer := hoy addDays: -3.
Transcript show: 'Hace 3 días fue: ',  ayer printString; cr.

