object registroAbatidosCOD {
	const diasYAbatidos = []
	
	method agregarDiasYAbatidos(fechasYBajas) = diasYAbatidos.addAll(fechasYBajas) 
	
	method cantidadDeDiasRegistrados() = diasYAbatidos.size()
	
	method estaVacioElRegistro() = diasYAbatidos.isEmpty()
	
	method algunDiaAbatio(cantidad) = diasYAbatidos.any({abatido => abatido.get(1) == cantidad}) // solo funciona cuando dan primero la fecha y luego la cantidad de abatidos en la lista...
		
	method primerValorDeAbatidos() = diasYAbatidos.first().get(1)
	
	method ultimoValorDeAbatidos() = diasYAbatidos.last().get(1)
	
	method totalAbatidos() = diasYAbatidos.sum({abatido => abatido.get(1)})
	
	method cantidadDeAbatidosElDia(fecha) = diasYAbatidos.find({dia => dia.get(0) == fecha}).get(1)
	
	method ultimoValorDeAbatidosConSize() = diasYAbatidos.last() == diasYAbatidos.size() - 1 // pensar ah
	
	method diasConAbatidosSuperioresA(cuanto) = diasYAbatidos.filter({abatido => abatido.get(1) > cuanto}).flatten().filter({abatido => abatido > 20000000})
	
	method valoresDeAbatidosPares() = diasYAbatidos.filter({abatido => abatido.get(1).even()}).flatten().filter({abatido => abatido < 10000000})
	
	method abatidosSumando(cantidad) = diasYAbatidos.map({abatido => abatido.get(1) + cantidad})
	
	method abatidosEsAcotada(n1, n2) = diasYAbatidos.all({abatido => abatido.get(1).between(n1, n2)})
	
	method algunDiaAbatioMasDe(cantidad) = diasYAbatidos.any({abatido => abatido.get(1) > cantidad})
	
	method todosLosDiasAbatioMasDe(cantidad) = diasYAbatidos.all({abatido => abatido.get(1) > cantidad})
	
	method cantidadAbatidosMayorALaPrimera() = diasYAbatidos.count({abatido => abatido.get(1) > self.primerValorDeAbatidos()})

	method esCrack() = diasYAbatidos.all({abatidos => abatidos.get(1) > self.primerValorDeAbatidos()})
}






















