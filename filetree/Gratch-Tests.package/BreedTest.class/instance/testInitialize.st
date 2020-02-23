test
testInitialize
	| br |
	br := self newBreed.
	self assert: br varId class equals: VarDef.
	self assert: br privVariables class equals: Variables.