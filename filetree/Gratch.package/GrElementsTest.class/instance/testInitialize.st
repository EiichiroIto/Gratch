test
testInitialize
	| ts |
	ts := self newElements.
	self assert: ts varId class equals: VarDef.
	self assert: ts privVariables class equals: Variables.