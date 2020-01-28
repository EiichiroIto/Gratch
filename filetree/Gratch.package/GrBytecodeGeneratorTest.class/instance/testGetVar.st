test
testGetVar
	| g |
	g := self newGenerator.
	g getVar: 5.
	self assertCollection: g code equals: {#pushShort . 5 . 0 . #getVar . #stop}