test
testReset
	| b |
	b := GrEdges basicNew.
	b reset.
	self assert: b privVarId class equals: GrEdgesVarDef.
	self assert: b privVariables class equals: Variables.