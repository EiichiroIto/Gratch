test
testXVarNo
	| v |
	v := self newVarDef.
	self assert: (v varNoFor: 'x') equals: GrNodesVarDef xVarNo.