test
testInitialize
	| ts |
	ts := self newElements.
	self assert: ts varDef class equals: VarDef.
	self assert: ts variables class equals: Variables.