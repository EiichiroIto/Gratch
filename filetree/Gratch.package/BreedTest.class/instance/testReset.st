test
testReset
	| b |
	b := Breed basicNew.
	b reset.
	self assert: b privVarId class equals: VarDef.
	self assert: b privVariables class equals: Variables.