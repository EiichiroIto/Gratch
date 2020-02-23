test
testYVarNo
	| v |
	v := self newVarDef.
	self assert: (v varNoFor: 'y') equals: GrNodesVarDef yVarNo.