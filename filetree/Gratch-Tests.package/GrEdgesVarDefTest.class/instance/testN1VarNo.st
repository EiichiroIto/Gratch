test
testN1VarNo
	| v |
	v := self newVarDef.
	self assert: (v varNoFor: 'n1') equals: GrEdgesVarDef n1VarNo.