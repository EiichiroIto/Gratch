test
testInitialize
	| v |
	v := GrEdgesVarDef new.
	self assert: v privVarNames size equals: 4.
	self assert: (v includes: 'flag').
	self assert: (v includes: 'color').
	self assert: (v includes: 'n1').
	self assert: (v includes: 'n2')