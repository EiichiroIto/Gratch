test
testInitialize
	| v |
	v := self newVarDef.
	self assert: v privVarNames size equals: 5.
	self assert: (v includes: 'color').
	self assert: (v includes: 'flag').
	self assert: (v includes: 'name').
	self assert: (v includes: 'x').
	self assert: (v includes: 'y').