test
testIsEmpty
	| c |
	c := self newEntryPoints.
	self assert: c isEmpty.
	c addEntryPoint: 2 forBreedNo: 1.
	self deny: c isEmpty.