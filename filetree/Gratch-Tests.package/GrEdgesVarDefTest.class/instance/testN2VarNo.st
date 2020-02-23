test
testN2VarNo
	| v |
	v := self newVarDef.
	self assert: (v varNoFor: 'n2') equals: GrEdgesVarDef n2VarNo.