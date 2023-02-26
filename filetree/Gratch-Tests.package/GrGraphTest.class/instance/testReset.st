test
testReset
	| b |
	b := GrGraph basicNew.
	b reset.
	self assert: b varDef class equals: GrGraphVarDef.
	self assert: b variables class equals: Variables.