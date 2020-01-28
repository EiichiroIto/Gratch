test
testRealVarNames
	| t |
	t := self newVarDef.
	self assertCollection: t realVarNames hasSameElements: t privReservedVarNames.
	t addVariable: 'abc'.
	self assertCollection: t realVarNames hasSameElements: t privReservedVarNames, {#abc}.