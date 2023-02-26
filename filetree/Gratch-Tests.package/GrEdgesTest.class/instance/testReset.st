test
testReset
	| b |
	b := GrEdges basicNew.
	b reset.
	self assert: b varDef class equals: GrEdgesVarDef.
	self assert: b variables class equals: Variables.