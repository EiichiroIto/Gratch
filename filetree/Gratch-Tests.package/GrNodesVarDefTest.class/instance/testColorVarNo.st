test
testColorVarNo

	| v |
	v := self newVarDef.
	self assert: (v varNoFor: 'color') equals: v class colorVarNo.
	self assert: GrNodesVarDef colorVarNo equals: 1