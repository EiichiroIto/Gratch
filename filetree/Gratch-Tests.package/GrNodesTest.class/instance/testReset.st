test
testReset
	| b |
	b := GrNodes basicNew.
	b reset.
	self assert: b varDef class equals: GrNodesVarDef.
	self assert: b variables class equals: Variables.