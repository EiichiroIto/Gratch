test
testInitialize
	| br |
	br := self newBreed.
	self assert: br varDef class equals: VarDef.
	self assert: br variables class equals: Variables.