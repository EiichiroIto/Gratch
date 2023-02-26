test
testInitialize
	| ts |
	ts := self newNodes.
	self assert: ts varDef class equals: GrNodesVarDef.
	self assert: ts variables class equals: Variables.
	self assert: ts countAlive equals: 0.