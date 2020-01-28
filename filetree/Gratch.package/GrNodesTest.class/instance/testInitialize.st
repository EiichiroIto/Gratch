test
testInitialize
	| ts |
	ts := self newNodes.
	self assert: ts varId class equals: GrNodesVarDef.
	self assert: ts privVariables class equals: Variables.
	self assert: ts countAlive equals: 0.