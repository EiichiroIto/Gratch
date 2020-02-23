test
testReset
	| b |
	b := GrNodes basicNew.
	b reset.
	self assert: b privVarId class equals: GrNodesVarDef.
	self assert: b privVariables class equals: Variables.