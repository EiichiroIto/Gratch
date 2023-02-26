test
testReset
	| b |
	b := Breed basicNew.
	b reset.
	self assert: b varDef class equals: VarDef.
	self assert: b variables class equals: Variables.