test
testSetVarTo
	| g |
	g := self newGenerator.
	g setVar: 3 to: 5.
	self
		assertCollection: g code
		equals: {#pushShort . 3 . 0 . #pushShort . 5 . 0 . #setVarTo . #stop}