test
testNameVarNo
	| v |
	v := self newVarDef.
	self assert: (v varNoFor: 'name') equals: GrNodesVarDef nameVarNo.