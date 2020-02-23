test
testReset
	| b |
	b := GrGraph basicNew.
	b reset.
	self assert: b privVarId class equals: GrGraphVarDef.
	self assert: b privVariables class equals: Variables.